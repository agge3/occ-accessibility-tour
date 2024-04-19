#include "task-thread.h"

TaskThread::TaskThread() :
    _th(),
    _wakeup(false),
    _stop(false),
    _finished(true)
{}

/**
 * Run bool async Task (return FALSE when finished).
 */
void TaskThread::async(std::function<bool ()> task)
{
    std::packaged_task<bool ()> ptask(task);
    _th(std::move(ptask);
    _th.detach();
    _fut = ptask.get_future();
    //{
    //    auto lock = std::unique_lock<std::mutex>(_mtx);
    //    _finished = false;
    //}
}

/**
 * @return TRUE if async Task is finished.
 */
bool TaskThread::async_is_finished()
{
    auto lock = std::unique_lock<std::mutex>(_mtx);
    if (_fut != false)
        return false;

    return true;
}

/**
 * Wakeup TaskThread.
 */
void TaskThread::wakeup() 
{
    auto lock = std::unique_lock<std::mutex>(_wakemtx);
    _wakeup = true;
    _wakecond.notify_one();
}

/**
* Wait for TaskThread to complete.
*/
void TaskThread::wait() 
{
    auto lock = std::unique_lock<std::mutex>(_waitmtx);
    while (_wakeup) {
        _wakecond.wait(lock);
    }
}

/**
* Ask the TaskThread to stop.
*/
void TaskThread::stop() 
{
    auto lock = std::unique_lock<std::mutex>(_wakemtx);
    _stop = true;
    _wakecond.notify_one();
}

/**
* Join the TaskThread (wait for it to stop and join).
*/
void TaskThread::join()
{
    _th.join();
}

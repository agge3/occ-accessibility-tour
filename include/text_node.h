#pragma once

#include "r_holders.h"
#include "r_ids.h"
#include "scene_node.h"

#include <SFML/Graphics/Text.hpp>
#include <SFML/Graphics/Font.hpp>

// text node is a derivative of scene node
class TextNode : public SceneNode {
public:
    explicit TextNode(const FontHolder& fonts, const std::string& text);
    void set_string(const std::string& text);
    void set_fill_color(int r, int g, int b, int alpha = 255);
private:
    virtual void draw_current(sf::RenderTarget& target, sf::RenderStates states)
        const;
    sf::Text m_text;
};

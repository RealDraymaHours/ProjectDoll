//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float pixelW;
uniform float pixelH;
uniform vec4 glowCol;

void main()
{
    vec4 bordCol = vec4(1.0, 1.0, 1.0, 1.0);
    vec2 dx = vec2(pixelW, 0.0);
    vec2 dy = vec2(0.0, pixelH);
    float factor = 0.75;
    float alpha;
    
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    
    if (gl_FragColor.a > 0.0)
        return;
    
    alpha = min(1.0,
        texture2D(gm_BaseTexture, v_vTexcoord + 1.0 * dx + 0.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord + 0.0 * dx + 1.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord - 1.0 * dx + 0.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord + 0.0 * dx - 1.0 * dy).a);
    
    gl_FragColor = vec4(bordCol.rgb, bordCol.a * alpha);
    
    if (gl_FragColor.a > 0.0)
        return;
    
    alpha = min(1.0,
        texture2D(gm_BaseTexture, v_vTexcoord + 1.0 * dx + 1.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord - 1.0 * dx + 1.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord - 1.0 * dx - 1.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord + 1.0 * dx - 1.0 * dy).a +
        
        texture2D(gm_BaseTexture, v_vTexcoord + 1.0 * dx + 2.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord + 0.0 * dx + 2.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord - 1.0 * dx + 2.0 * dy).a +
        
        texture2D(gm_BaseTexture, v_vTexcoord - 2.0 * dx + 1.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord - 2.0 * dx + 0.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord - 2.0 * dx - 1.0 * dy).a +
        
        texture2D(gm_BaseTexture, v_vTexcoord - 1.0 * dx - 2.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord + 0.0 * dx - 2.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord + 1.0 * dx - 2.0 * dy).a +
        
        texture2D(gm_BaseTexture, v_vTexcoord + 2.0 * dx - 1.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord + 2.0 * dx + 0.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord + 2.0 * dx + 1.0 * dy).a);
    
    gl_FragColor = vec4(glowCol.rgb, glowCol.a * alpha);
    
    if (gl_FragColor.a > 0.0)
        return;
    
    alpha = min(1.0,
        texture2D(gm_BaseTexture, v_vTexcoord + 2.0 * dx + 2.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord - 2.0 * dx + 2.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord - 2.0 * dx - 2.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord + 2.0 * dx - 2.0 * dy).a +
        
        texture2D(gm_BaseTexture, v_vTexcoord + 2.0 * dx + 3.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord + 1.0 * dx + 3.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord + 0.0 * dx + 3.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord - 1.0 * dx + 3.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord - 2.0 * dx + 3.0 * dy).a +
        
        texture2D(gm_BaseTexture, v_vTexcoord - 3.0 * dx + 2.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord - 3.0 * dx + 1.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord - 3.0 * dx + 0.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord - 3.0 * dx - 1.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord - 3.0 * dx - 2.0 * dy).a +
        
        texture2D(gm_BaseTexture, v_vTexcoord - 2.0 * dx - 3.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord - 1.0 * dx - 3.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord + 0.0 * dx - 3.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord + 1.0 * dx - 3.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord + 2.0 * dx - 3.0 * dy).a +
        
        texture2D(gm_BaseTexture, v_vTexcoord + 3.0 * dx - 2.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord + 3.0 * dx - 1.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord + 3.0 * dx + 0.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord + 3.0 * dx + 1.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord + 3.0 * dx + 2.0 * dy).a);
    
    gl_FragColor = vec4(glowCol.rgb, glowCol.a * alpha * factor);
    
    if (gl_FragColor.a > 0.0)
        return;
    
    alpha = min(1.0,
        texture2D(gm_BaseTexture, v_vTexcoord + 3.0 * dx + 2.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord + 3.0 * dx + 3.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord + 2.0 * dx + 3.0 * dy).a +
        
        texture2D(gm_BaseTexture, v_vTexcoord - 2.0 * dx + 3.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord - 3.0 * dx + 3.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord - 3.0 * dx + 2.0 * dy).a +
        
        texture2D(gm_BaseTexture, v_vTexcoord - 3.0 * dx - 2.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord - 3.0 * dx - 3.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord - 2.0 * dx - 3.0 * dy).a +
        
        texture2D(gm_BaseTexture, v_vTexcoord + 2.0 * dx - 3.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord + 3.0 * dx - 3.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord + 3.0 * dx - 2.0 * dy).a +
        
        texture2D(gm_BaseTexture, v_vTexcoord + 2.0 * dx + 4.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord + 1.0 * dx + 4.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord + 0.0 * dx + 4.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord - 1.0 * dx + 4.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord - 2.0 * dx + 4.0 * dy).a +
        
        texture2D(gm_BaseTexture, v_vTexcoord - 4.0 * dx + 2.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord - 4.0 * dx + 1.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord - 4.0 * dx + 0.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord - 4.0 * dx - 1.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord - 4.0 * dx - 2.0 * dy).a +
        
        texture2D(gm_BaseTexture, v_vTexcoord - 2.0 * dx - 4.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord - 1.0 * dx - 4.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord + 0.0 * dx - 4.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord + 1.0 * dx - 4.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord + 2.0 * dx - 4.0 * dy).a +
        
        texture2D(gm_BaseTexture, v_vTexcoord + 4.0 * dx - 2.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord + 4.0 * dx - 1.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord + 4.0 * dx + 0.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord + 4.0 * dx + 1.0 * dy).a +
        texture2D(gm_BaseTexture, v_vTexcoord + 4.0 * dx + 2.0 * dy).a);
    
    gl_FragColor = vec4(glowCol.rgb, glowCol.a * alpha * factor * factor);
}


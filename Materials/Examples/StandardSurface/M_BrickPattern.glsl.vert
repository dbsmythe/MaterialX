#version 400

// Uniform block: PrivateUniforms
uniform mat4 u_worldMatrix = mat4(1.0);
uniform mat4 u_viewProjectionMatrix = mat4(1.0);
uniform mat4 u_worldInverseTransposeMatrix = mat4(1.0);

// Inputs block: VertexInputs
in vec3 i_position;
in vec2 i_texcoord_0;
in vec3 i_normal;
in vec3 i_tangent;

out VertexData
{
    vec2 texcoord_0;
    vec3 normalWorld;
    vec3 tangentWorld;
    vec3 bitangentWorld;
    vec3 positionWorld;
} vd;

void main()
{
    vec4 hPositionWorld = u_worldMatrix * vec4(i_position, 1.0);
    gl_Position = u_viewProjectionMatrix * hPositionWorld;
    vd.texcoord_0 = i_texcoord_0;
    vd.normalWorld = normalize((u_worldInverseTransposeMatrix * vec4(i_normal, 0.0)).xyz);
    vd.tangentWorld = normalize((u_worldMatrix * vec4(i_tangent, 0.0)).xyz);
    vd.bitangentWorld = cross(vd.normalWorld, vd.tangentWorld);
    // Omitted node 'N_mult_float'. Function already called in this scope.
    // Omitted node 'N_sub_float'. Function already called in this scope.
    // Omitted node 'N_divtilesize_float'. Function already called in this scope.
    // Omitted node 'N_multtilesize_float'. Function already called in this scope.
    // Omitted node 'N_img_float'. Function already called in this scope.
    // Omitted node 'N_mult_float'. Function already called in this scope.
    // Omitted node 'N_sub_float'. Function already called in this scope.
    // Omitted node 'N_divtilesize_float'. Function already called in this scope.
    // Omitted node 'N_multtilesize_float'. Function already called in this scope.
    // Omitted node 'N_img_float'. Function already called in this scope.
    // Omitted node 'N_mult_float'. Function already called in this scope.
    // Omitted node 'N_sub_float'. Function already called in this scope.
    // Omitted node 'N_divtilesize_float'. Function already called in this scope.
    // Omitted node 'N_multtilesize_float'. Function already called in this scope.
    // Omitted node 'N_img_float'. Function already called in this scope.
    // Omitted node 'N_mult_float'. Function already called in this scope.
    // Omitted node 'N_sub_float'. Function already called in this scope.
    // Omitted node 'N_divtilesize_float'. Function already called in this scope.
    // Omitted node 'N_multtilesize_float'. Function already called in this scope.
    // Omitted node 'N_img_float'. Function already called in this scope.
    vd.positionWorld = hPositionWorld.xyz;
}

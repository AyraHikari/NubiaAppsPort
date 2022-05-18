.class public Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;
.super Ljava/lang/Object;
.source "GLES20Canvas.java"

# interfaces
.implements Lcn/nubia/gallery3d/glrenderer/GLCanvas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;,
        Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;,
        Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;
    }
.end annotation


# static fields
.field private static final ALPHA_UNIFORM:Ljava/lang/String; = "uAlpha"

.field private static final BOUNDS_COORDINATES:[F

.field private static final BOX_COORDINATES:[F

.field private static final COLOR_UNIFORM:Ljava/lang/String; = "uColor"

.field private static final COORDS_PER_VERTEX:I = 0x2

.field private static final COUNT_FILL_VERTEX:I = 0x4

.field private static final COUNT_LINE_VERTEX:I = 0x2

.field private static final COUNT_RECT_VERTEX:I = 0x4

.field private static final DRAW_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nuniform vec4 uColor;\nvoid main() {\n  gl_FragColor = uColor;\n}\n"

.field private static final DRAW_VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMatrix;\nattribute vec2 aPosition;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n}\n"

.field private static final FLOAT_SIZE:I = 0x4

.field private static final INDEX_ALPHA:I = 0x4

.field private static final INDEX_COLOR:I = 0x2

.field private static final INDEX_MATRIX:I = 0x1

.field private static final INDEX_POSITION:I = 0x0

.field private static final INDEX_TEXTURE_COORD:I = 0x2

.field private static final INDEX_TEXTURE_MATRIX:I = 0x2

.field private static final INDEX_TEXTURE_SAMPLER:I = 0x3

.field private static final INITIAL_RESTORE_STATE_SIZE:I = 0x8

.field private static final MATRIX_SIZE:I = 0x10

.field private static final MATRIX_UNIFORM:Ljava/lang/String; = "uMatrix"

.field private static final MESH_VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoordinate;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n  vTextureCoord = aTextureCoordinate;\n}\n"

.field private static final OES_TEXTURE_FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform samplerExternalOES uTextureSampler;\nvoid main() {\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n"

.field private static final OFFSET_DRAW_LINE:I = 0x4

.field private static final OFFSET_DRAW_RECT:I = 0x6

.field private static final OFFSET_FILL_RECT:I = 0x0

.field private static final OPAQUE_ALPHA:F = 0.95f

.field private static final POSITION_ATTRIBUTE:Ljava/lang/String; = "aPosition"

.field private static final TAG:Ljava/lang/String; = "GLES20Canvas"

.field private static final TEXTURE_COORD_ATTRIBUTE:Ljava/lang/String; = "aTextureCoordinate"

.field private static final TEXTURE_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform sampler2D uTextureSampler;\nvoid main() {\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n"

.field private static final TEXTURE_MATRIX_UNIFORM:Ljava/lang/String; = "uTextureMatrix"

.field private static final TEXTURE_SAMPLER_UNIFORM:Ljava/lang/String; = "uTextureSampler"

.field private static final TEXTURE_VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMatrix;\nuniform mat4 uTextureMatrix;\nattribute vec2 aPosition;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n  vTextureCoord = (uTextureMatrix * pos).xy;\n}\n"

.field private static final VERTEX_STRIDE:I = 0x8

.field private static final mGLId:Lcn/nubia/gallery3d/glrenderer/GLId;


# instance fields
.field private mAlphas:[F

.field private mBoxCoordinates:I

.field private mCountDrawLine:I

.field private mCountDrawMesh:I

.field private mCountFillRect:I

.field private mCountTextureRect:I

.field private mCurrentAlphaIndex:I

.field private mCurrentMatrixIndex:I

.field private final mDeleteBuffers:Lcn/nubia/gallery3d/util/IntArray;

.field mDrawParameters:[Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

.field private mDrawProgram:I

.field private mFrameBuffer:[I

.field private mHeight:I

.field private mMatrices:[F

.field mMeshParameters:[Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

.field private mMeshProgram:I

.field mOesTextureParameters:[Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

.field private mOesTextureProgram:I

.field private mProjectionMatrix:[F

.field private mSaveFlags:Lcn/nubia/gallery3d/util/IntArray;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mTargetTextures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/glrenderer/RawTexture;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempColor:[F

.field private final mTempIntArray:[I

.field private final mTempMatrix:[F

.field private final mTempSourceRect:Landroid/graphics/RectF;

.field private final mTempTargetRect:Landroid/graphics/RectF;

.field private final mTempTextureMatrix:[F

.field mTextureParameters:[Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

.field private mTextureProgram:I

.field private final mUnboundTextures:Lcn/nubia/gallery3d/util/IntArray;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [F

    .line 51
    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->BOX_COORDINATES:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 64
    fill-array-data v0, :array_1

    sput-object v0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->BOUNDS_COORDINATES:[F

    .line 267
    new-instance v0, Lcn/nubia/gallery3d/glrenderer/GLES20IdImpl;

    invoke-direct {v0}, Lcn/nubia/gallery3d/glrenderer/GLES20IdImpl;-><init>()V

    sput-object v0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mGLId:Lcn/nubia/gallery3d/glrenderer/GLId;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 14

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [F

    .line 139
    iput-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 140
    iput-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    .line 141
    new-instance v0, Lcn/nubia/gallery3d/util/IntArray;

    invoke-direct {v0}, Lcn/nubia/gallery3d/util/IntArray;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mSaveFlags:Lcn/nubia/gallery3d/util/IntArray;

    const/4 v0, 0x0

    .line 143
    iput v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    .line 144
    iput v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    const/16 v1, 0x10

    new-array v2, v1, [F

    .line 151
    iput-object v2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mProjectionMatrix:[F

    const/4 v2, 0x3

    new-array v3, v2, [Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    .line 216
    new-instance v4, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;

    const-string v5, "aPosition"

    invoke-direct {v4, v5}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v0

    new-instance v4, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string v6, "uMatrix"

    invoke-direct {v4, v6}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    aput-object v4, v3, v7

    new-instance v4, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string v8, "uColor"

    invoke-direct {v4, v8}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x2

    aput-object v4, v3, v8

    iput-object v3, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mDrawParameters:[Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    const/4 v3, 0x5

    new-array v4, v3, [Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    .line 221
    new-instance v9, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;

    invoke-direct {v9, v5}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v9, v4, v0

    new-instance v9, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    invoke-direct {v9, v6}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v9, v4, v7

    new-instance v9, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string v10, "uTextureMatrix"

    invoke-direct {v9, v10}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v9, v4, v8

    new-instance v9, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string v11, "uTextureSampler"

    invoke-direct {v9, v11}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v9, v4, v2

    new-instance v9, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string v12, "uAlpha"

    invoke-direct {v9, v12}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x4

    aput-object v9, v4, v13

    iput-object v4, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTextureParameters:[Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    new-array v4, v3, [Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    .line 228
    new-instance v9, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;

    invoke-direct {v9, v5}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v9, v4, v0

    new-instance v9, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    invoke-direct {v9, v6}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v9, v4, v7

    new-instance v9, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    invoke-direct {v9, v10}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v9, v4, v8

    new-instance v9, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    invoke-direct {v9, v11}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v9, v4, v2

    new-instance v9, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    invoke-direct {v9, v12}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v9, v4, v13

    iput-object v4, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mOesTextureParameters:[Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    new-array v3, v3, [Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    .line 235
    new-instance v4, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;

    invoke-direct {v4, v5}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v0

    new-instance v4, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    invoke-direct {v4, v6}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v7

    new-instance v4, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;

    const-string v5, "aTextureCoordinate"

    invoke-direct {v4, v5}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v8

    new-instance v4, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    invoke-direct {v4, v11}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v2

    new-instance v2, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    invoke-direct {v2, v12}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v2, v3, v13

    iput-object v3, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mMeshParameters:[Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    .line 243
    new-instance v2, Lcn/nubia/gallery3d/util/IntArray;

    invoke-direct {v2}, Lcn/nubia/gallery3d/util/IntArray;-><init>()V

    iput-object v2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mUnboundTextures:Lcn/nubia/gallery3d/util/IntArray;

    .line 244
    new-instance v2, Lcn/nubia/gallery3d/util/IntArray;

    invoke-direct {v2}, Lcn/nubia/gallery3d/util/IntArray;-><init>()V

    iput-object v2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mDeleteBuffers:Lcn/nubia/gallery3d/util/IntArray;

    .line 247
    iput v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCountDrawMesh:I

    .line 248
    iput v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCountTextureRect:I

    .line 249
    iput v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCountFillRect:I

    .line 250
    iput v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCountDrawLine:I

    new-array v2, v7, [I

    .line 254
    iput-object v2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mFrameBuffer:[I

    .line 257
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    const/16 v2, 0x20

    new-array v2, v2, [F

    .line 260
    iput-object v2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    new-array v2, v13, [F

    .line 261
    iput-object v2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempColor:[F

    .line 262
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    .line 263
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    new-array v1, v1, [F

    .line 264
    iput-object v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    new-array v2, v7, [I

    .line 265
    iput-object v2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempIntArray:[I

    .line 270
    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 271
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 272
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    iget v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 273
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->BOX_COORDINATES:[F

    invoke-static {v0}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 276
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->uploadBuffer(Ljava/nio/FloatBuffer;)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mBoxCoordinates:I

    const v0, 0x8b31

    const-string v1, "uniform mat4 uMatrix;\nattribute vec2 aPosition;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n}\n"

    .line 278
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v1

    const-string v2, "uniform mat4 uMatrix;\nuniform mat4 uTextureMatrix;\nattribute vec2 aPosition;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n  vTextureCoord = (uTextureMatrix * pos).xy;\n}\n"

    .line 279
    invoke-static {v0, v2}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v2

    const-string v3, "uniform mat4 uMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoordinate;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n  vTextureCoord = aTextureCoordinate;\n}\n"

    .line 280
    invoke-static {v0, v3}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v0

    const v3, 0x8b30

    const-string v4, "precision mediump float;\nuniform vec4 uColor;\nvoid main() {\n  gl_FragColor = uColor;\n}\n"

    .line 281
    invoke-static {v3, v4}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v4

    const-string v5, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform sampler2D uTextureSampler;\nvoid main() {\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n"

    .line 282
    invoke-static {v3, v5}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v5

    const-string v6, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform samplerExternalOES uTextureSampler;\nvoid main() {\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n"

    .line 283
    invoke-static {v3, v6}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 286
    iget-object v6, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mDrawParameters:[Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, v1, v4, v6}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->assembleProgram(II[Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mDrawProgram:I

    .line 287
    iget-object v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTextureParameters:[Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, v2, v5, v1}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->assembleProgram(II[Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTextureProgram:I

    .line 289
    iget-object v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mOesTextureParameters:[Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, v2, v3, v1}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->assembleProgram(II[Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mOesTextureProgram:I

    .line 291
    iget-object v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mMeshParameters:[Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, v0, v5, v1}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->assembleProgram(II[Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mMeshProgram:I

    const/16 v0, 0x303

    .line 292
    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 293
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return-void
.end method

.method private assembleProgram(II[Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)I
    .locals 2

    .line 306
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    .line 307
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    if-eqz v0, :cond_2

    .line 311
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 312
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 313
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 314
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 315
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 316
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 317
    iget-object p1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempIntArray:[I

    const p2, 0x8b82

    const/4 v1, 0x0

    .line 318
    invoke-static {v0, p2, p1, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 319
    aget p1, p1, v1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    .line 320
    sget-object p1, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->TAG:Ljava/lang/String;

    const-string p2, "Could not link program: "

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    move v0, v1

    .line 325
    :cond_0
    :goto_0
    array-length p1, p3

    if-ge v1, p1, :cond_1

    .line 326
    aget-object p1, p3, v1

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->loadHandle(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    .line 309
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot create GL program: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static checkError()V
    .locals 5

    .line 964
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 967
    sget-object v2, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GL error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private static checkFramebufferStatus()V
    .locals 4

    const v0, 0x8d40

    .line 882
    invoke-static {v0}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    const v1, 0x8cd5

    if-eq v0, v1, :cond_0

    sparse-switch v0, :sswitch_data_0

    const-string v1, ""

    goto :goto_0

    :sswitch_0
    const-string v1, "GL_FRAMEBUFFER_UNSUPPORTED"

    goto :goto_0

    :sswitch_1
    const-string v1, "GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS"

    goto :goto_0

    :sswitch_2
    const-string v1, "GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT"

    goto :goto_0

    :sswitch_3
    const-string v1, "GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT"

    .line 899
    :goto_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x8cd6 -> :sswitch_3
        0x8cd7 -> :sswitch_2
        0x8cd9 -> :sswitch_1
        0x8cdd -> :sswitch_0
    .end sparse-switch
.end method

.method private static convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcn/nubia/gallery3d/glrenderer/BasicTexture;)V
    .locals 5

    .line 644
    invoke-virtual {p2}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v0

    .line 645
    invoke-virtual {p2}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v1

    .line 646
    invoke-virtual {p2}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v2

    .line 647
    invoke-virtual {p2}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->getTextureHeight()I

    move-result p2

    .line 649
    iget v3, p0, Landroid/graphics/RectF;->left:F

    int-to-float v2, v2

    div-float/2addr v3, v2

    iput v3, p0, Landroid/graphics/RectF;->left:F

    .line 650
    iget v3, p0, Landroid/graphics/RectF;->right:F

    div-float/2addr v3, v2

    iput v3, p0, Landroid/graphics/RectF;->right:F

    .line 651
    iget v3, p0, Landroid/graphics/RectF;->top:F

    int-to-float p2, p2

    div-float/2addr v3, p2

    iput v3, p0, Landroid/graphics/RectF;->top:F

    .line 652
    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v3, p2

    iput v3, p0, Landroid/graphics/RectF;->bottom:F

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 656
    iget v2, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_0

    .line 657
    iget v2, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Landroid/graphics/RectF;->left:F

    sub-float v4, v0, v4

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 658
    iput v0, p0, Landroid/graphics/RectF;->right:F

    :cond_0
    int-to-float v0, v1

    div-float/2addr v0, p2

    .line 661
    iget p2, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_1

    .line 662
    iget p2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr p2, v1

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 663
    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method private static copyTextureCoordinates(Lcn/nubia/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;)V
    .locals 4

    .line 595
    invoke-virtual {p0}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v0

    .line 596
    invoke-virtual {p0}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v1

    .line 597
    invoke-virtual {p0}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->hasBorder()Z

    move-result p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    move v3, v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    int-to-float p0, v2

    int-to-float v2, v3

    int-to-float v0, v0

    int-to-float v1, v1

    .line 603
    invoke-virtual {p1, p0, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private static createBuffer([F)Ljava/nio/FloatBuffer;
    .locals 3

    .line 298
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    .line 299
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 301
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method private draw(IIIFFFFIF)V
    .locals 9

    move-object v8, p0

    move v0, p2

    move/from16 v1, p8

    move/from16 v2, p9

    .line 498
    invoke-direct {p0, p2, v1, v2}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->prepareDraw(IIF)V

    .line 499
    iget-object v1, v8, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mDrawParameters:[Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    move-object v0, p0

    move v2, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->draw([Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;IIFFFF)V

    return-void
.end method

.method private draw(IIIFFFFLcn/nubia/gallery3d/glrenderer/GLPaint;)V
    .locals 10

    .line 493
    invoke-virtual/range {p8 .. p8}, Lcn/nubia/gallery3d/glrenderer/GLPaint;->getColor()I

    move-result v8

    invoke-virtual/range {p8 .. p8}, Lcn/nubia/gallery3d/glrenderer/GLPaint;->getLineWidth()F

    move-result v9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->draw(IIIFFFFIF)V

    return-void
.end method

.method private draw([Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;IIFFFF)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    .line 556
    invoke-direct/range {v0 .. v5}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->setMatrix([Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;FFFF)V

    const/4 p4, 0x0

    .line 557
    aget-object p1, p1, p4

    iget p1, p1, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    .line 558
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 559
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 560
    invoke-static {p2, p4, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 561
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 562
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 563
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return-void
.end method

.method private drawTextureRect(Lcn/nubia/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 0

    .line 629
    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->setTextureMatrix(Landroid/graphics/RectF;)V

    .line 630
    iget-object p2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->drawTextureRect(Lcn/nubia/gallery3d/glrenderer/BasicTexture;[FLandroid/graphics/RectF;)V

    return-void
.end method

.method private drawTextureRect(Lcn/nubia/gallery3d/glrenderer/BasicTexture;[FLandroid/graphics/RectF;)V
    .locals 9

    .line 668
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->prepareTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;)[Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    move-result-object v1

    const/4 v0, 0x0

    .line 669
    invoke-direct {p0, v1, v0}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->setPosition([Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;I)V

    const/4 v2, 0x2

    .line 670
    aget-object v3, v1, v2

    iget v3, v3, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    const/4 v8, 0x1

    invoke-static {v3, v8, v0, p2, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 671
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 672
    invoke-virtual {p1}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->isFlippedVertically()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 673
    invoke-virtual {p0, v2}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->save(I)V

    .line 674
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->translate(FF)V

    const/high16 p2, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 675
    invoke-virtual {p0, v2, p2, v2}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->scale(FFF)V

    .line 676
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    neg-float p2, p2

    invoke-virtual {p0, v0, p2}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->translate(FF)V

    :cond_0
    const/4 v2, 0x5

    const/4 v3, 0x4

    .line 678
    iget v4, p3, Landroid/graphics/RectF;->left:F

    iget v5, p3, Landroid/graphics/RectF;->top:F

    .line 679
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v7

    move-object v0, p0

    .line 678
    invoke-direct/range {v0 .. v7}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->draw([Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;IIFFFF)V

    .line 680
    invoke-virtual {p1}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->isFlippedVertically()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 681
    invoke-virtual {p0}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->restore()V

    .line 683
    :cond_1
    iget p1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCountTextureRect:I

    add-int/2addr p1, v8

    iput p1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCountTextureRect:I

    return-void
.end method

.method private enableBlending(Z)V
    .locals 1

    const/16 v0, 0xbe2

    if-eqz p1, :cond_0

    .line 536
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 537
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    goto :goto_0

    .line 539
    :cond_0
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 540
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    :goto_0
    return-void
.end method

.method private getColor(I)[F
    .locals 5

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 523
    invoke-virtual {p0}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->getAlpha()F

    move-result v2

    mul-float/2addr v0, v2

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v1

    mul-float/2addr v2, v0

    ushr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v1

    mul-float/2addr v3, v0

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    div-float/2addr p1, v1

    mul-float/2addr p1, v0

    .line 527
    iget-object v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempColor:[F

    const/4 v4, 0x0

    aput v2, v1, v4

    const/4 v2, 0x1

    .line 528
    aput v3, v1, v2

    const/4 v2, 0x2

    .line 529
    aput p1, v1, v2

    const/4 p1, 0x3

    .line 530
    aput v0, v1, p1

    return-object v1
.end method

.method private getTargetTexture()Lcn/nubia/gallery3d/glrenderer/RawTexture;
    .locals 2

    .line 848
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/glrenderer/RawTexture;

    return-object v0
.end method

.method private static loadShader(ILjava/lang/String;)I
    .locals 0

    .line 334
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    .line 337
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 338
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 339
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 340
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return p0
.end method

.method private prepareDraw(IIF)V
    .locals 6

    .line 503
    iget v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mDrawProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 504
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    .line 506
    invoke-static {p3}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 507
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 509
    :cond_0
    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->getColor(I)[F

    move-result-object p2

    const/4 p3, 0x3

    .line 510
    aget v0, p2, p3

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 511
    :goto_0
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->enableBlending(Z)V

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    .line 513
    aget v0, p2, v2

    aget v4, p2, v1

    aget v5, p2, v3

    aget p3, p2, p3

    invoke-static {v0, v4, v5, p3}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    .line 514
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 517
    :cond_2
    iget-object p3, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mDrawParameters:[Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    aget-object p3, p3, v3

    iget p3, p3, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    invoke-static {p3, v1, p2, v2}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 518
    iget-object p2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mDrawParameters:[Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, p2, p1}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->setPosition([Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;I)V

    .line 519
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return-void
.end method

.method private prepareTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;I[Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)V
    .locals 2

    .line 701
    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 702
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 703
    invoke-virtual {p1}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->getAlpha()F

    move-result p2

    const v1, 0x3f733333    # 0.95f

    cmpg-float p2, p2, v1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->enableBlending(Z)V

    const p2, 0x84c0

    .line 704
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 705
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 706
    invoke-virtual {p1, p0}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->onBind(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)Z

    .line 707
    invoke-virtual {p1}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result p2

    invoke-virtual {p1}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result p1

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 708
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    const/4 p1, 0x3

    .line 709
    aget-object p1, p3, p1

    iget p1, p1, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 710
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    const/4 p1, 0x4

    .line 711
    aget-object p1, p3, p1

    iget p1, p1, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    invoke-virtual {p0}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->getAlpha()F

    move-result p2

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 712
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return-void
.end method

.method private prepareTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;)[Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;
    .locals 2

    .line 689
    invoke-virtual {p1}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    const/16 v1, 0xde1

    if-ne v0, v1, :cond_0

    .line 690
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTextureParameters:[Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    .line 691
    iget v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTextureProgram:I

    goto :goto_0

    .line 693
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mOesTextureParameters:[Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    .line 694
    iget v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mOesTextureProgram:I

    .line 696
    :goto_0
    invoke-direct {p0, p1, v1, v0}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->prepareTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;I[Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)V

    return-object v0
.end method

.method private static printMatrix(Ljava/lang/String;[FI)V
    .locals 2

    .line 973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge p0, v1, :cond_1

    const/16 v1, 0x20

    .line 975
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 976
    rem-int/lit8 v1, p0, 0x4

    if-nez v1, :cond_0

    const/16 v1, 0xa

    .line 977
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int v1, p2, p0

    .line 979
    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 981
    :cond_1
    sget-object p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setMatrix([Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;FFFF)V
    .locals 7

    .line 567
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    iget-object v2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v3, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    const/4 v1, 0x0

    const/4 v6, 0x0

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 568
    iget-object p2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    const/4 p3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, p3, p4, p5, v0}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 569
    iget-object v5, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    iget-object v3, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mProjectionMatrix:[F

    const/16 v2, 0x10

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v5

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/4 p2, 0x1

    .line 570
    aget-object p1, p1, p2

    iget p1, p1, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    iget-object p4, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    const/16 p5, 0x10

    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 571
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return-void
.end method

.method private setPosition([Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;I)V
    .locals 8

    .line 545
    iget v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mBoxCoordinates:I

    const v1, 0x8892

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 546
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    const/4 v0, 0x0

    .line 547
    aget-object p1, p1, v0

    iget v2, p1, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    mul-int/lit8 v7, p2, 0x8

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 549
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 550
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 551
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return-void
.end method

.method private setRenderTarget(Lcn/nubia/gallery3d/glrenderer/BasicTexture;Lcn/nubia/gallery3d/glrenderer/RawTexture;)V
    .locals 3

    const/4 v0, 0x1

    const v1, 0x8d40

    const/4 v2, 0x0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 853
    iget-object p1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mFrameBuffer:[I

    invoke-static {v0, p1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 854
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 855
    iget-object p1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mFrameBuffer:[I

    aget p1, p1, v2

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 856
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 858
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 859
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 860
    iget-object p1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mFrameBuffer:[I

    invoke-static {v0, p1, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 861
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 865
    iget p1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mScreenWidth:I

    iget p2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mScreenHeight:I

    invoke-virtual {p0, p1, p2}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->setSize(II)V

    goto :goto_1

    .line 867
    :cond_2
    invoke-virtual {p2}, Lcn/nubia/gallery3d/glrenderer/RawTexture;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Lcn/nubia/gallery3d/glrenderer/RawTexture;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->setSize(II)V

    .line 869
    invoke-virtual {p2}, Lcn/nubia/gallery3d/glrenderer/RawTexture;->isLoaded()Z

    move-result p1

    if-nez p1, :cond_3

    .line 870
    invoke-virtual {p2, p0}, Lcn/nubia/gallery3d/glrenderer/RawTexture;->prepare(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    :cond_3
    const p1, 0x8ce0

    .line 874
    invoke-virtual {p2}, Lcn/nubia/gallery3d/glrenderer/RawTexture;->getTarget()I

    move-result v0

    invoke-virtual {p2}, Lcn/nubia/gallery3d/glrenderer/RawTexture;->getId()I

    move-result p2

    .line 873
    invoke-static {v1, p1, v0, p2, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 875
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 877
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkFramebufferStatus()V

    :goto_1
    return-void
.end method

.method private setTextureMatrix(Landroid/graphics/RectF;)V
    .locals 3

    .line 634
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 635
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 636
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    const/16 v2, 0xc

    aput v1, v0, v2

    .line 637
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    const/16 v1, 0xd

    aput p1, v0, v1

    return-void
.end method

.method private uploadBuffer(Ljava/nio/Buffer;I)I
    .locals 4

    .line 952
    sget-object v0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mGLId:Lcn/nubia/gallery3d/glrenderer/GLId;

    iget-object v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempIntArray:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcn/nubia/gallery3d/glrenderer/GLId;->glGenBuffers(I[II)V

    .line 953
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 954
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempIntArray:[I

    aget v0, v0, v3

    const v1, 0x8892

    .line 955
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 956
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 957
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    mul-int/2addr v2, p2

    const p2, 0x88e4

    invoke-static {v1, v2, p1, p2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 959
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return v0
.end method


# virtual methods
.method public beginRenderTarget(Lcn/nubia/gallery3d/glrenderer/RawTexture;)V
    .locals 2

    .line 841
    invoke-virtual {p0}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->save()V

    .line 842
    invoke-direct {p0}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->getTargetTexture()Lcn/nubia/gallery3d/glrenderer/RawTexture;

    move-result-object v0

    .line 843
    iget-object v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    invoke-direct {p0, v0, p1}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->setRenderTarget(Lcn/nubia/gallery3d/glrenderer/BasicTexture;Lcn/nubia/gallery3d/glrenderer/RawTexture;)V

    return-void
.end method

.method public clearBuffer()V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 363
    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 364
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    const/16 v0, 0x4000

    .line 365
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 366
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return-void
.end method

.method public clearBuffer([F)V
    .locals 4

    const/4 v0, 0x1

    .line 371
    aget v0, p1, v0

    const/4 v1, 0x2

    aget v1, p1, v1

    const/4 v2, 0x3

    aget v2, p1, v2

    const/4 v3, 0x0

    aget p1, p1, v3

    invoke-static {v0, v1, v2, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 372
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    const/16 p1, 0x4000

    .line 373
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 374
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return-void
.end method

.method public deleteBuffer(I)V
    .locals 2

    .line 798
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mUnboundTextures:Lcn/nubia/gallery3d/util/IntArray;

    monitor-enter v0

    .line 799
    :try_start_0
    iget-object v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mDeleteBuffers:Lcn/nubia/gallery3d/util/IntArray;

    invoke-virtual {v1, p1}, Lcn/nubia/gallery3d/util/IntArray;->add(I)V

    .line 800
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public deleteRecycledResources()V
    .locals 7

    .line 805
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mUnboundTextures:Lcn/nubia/gallery3d/util/IntArray;

    monitor-enter v0

    .line 806
    :try_start_0
    iget-object v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mUnboundTextures:Lcn/nubia/gallery3d/util/IntArray;

    .line 807
    invoke-virtual {v1}, Lcn/nubia/gallery3d/util/IntArray;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-lez v2, :cond_0

    .line 808
    sget-object v2, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mGLId:Lcn/nubia/gallery3d/glrenderer/GLId;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/util/IntArray;->size()I

    move-result v5

    invoke-virtual {v1}, Lcn/nubia/gallery3d/util/IntArray;->getInternalArray()[I

    move-result-object v6

    invoke-interface {v2, v4, v5, v6, v3}, Lcn/nubia/gallery3d/glrenderer/GLId;->glDeleteTextures(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    .line 809
    invoke-virtual {v1}, Lcn/nubia/gallery3d/util/IntArray;->clear()V

    .line 812
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mDeleteBuffers:Lcn/nubia/gallery3d/util/IntArray;

    .line 813
    invoke-virtual {v1}, Lcn/nubia/gallery3d/util/IntArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 814
    sget-object v2, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mGLId:Lcn/nubia/gallery3d/glrenderer/GLId;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/util/IntArray;->size()I

    move-result v5

    invoke-virtual {v1}, Lcn/nubia/gallery3d/util/IntArray;->getInternalArray()[I

    move-result-object v6

    invoke-interface {v2, v4, v5, v6, v3}, Lcn/nubia/gallery3d/glrenderer/GLId;->glDeleteBuffers(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    .line 815
    invoke-virtual {v1}, Lcn/nubia/gallery3d/util/IntArray;->clear()V

    .line 817
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public drawLine(FFFFLcn/nubia/gallery3d/glrenderer/GLPaint;)V
    .locals 9

    sub-float v6, p3, p1

    sub-float v7, p4, p2

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    move-object v0, p0

    move v4, p1

    move v5, p2

    move-object v8, p5

    .line 480
    invoke-direct/range {v0 .. v8}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->draw(IIIFFFFLcn/nubia/gallery3d/glrenderer/GLPaint;)V

    .line 482
    iget p1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCountDrawLine:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCountDrawLine:I

    return-void
.end method

.method public drawMesh(Lcn/nubia/gallery3d/glrenderer/BasicTexture;IIIIII)V
    .locals 12

    move-object v0, p0

    .line 718
    iget v1, v0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mMeshProgram:I

    iget-object v2, v0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mMeshParameters:[Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    move-object v3, p1

    invoke-direct {p0, p1, v1, v2}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->prepareTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;I[Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)V

    const v1, 0x8893

    move/from16 v2, p6

    .line 720
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 721
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    const v2, 0x8892

    move/from16 v3, p4

    .line 723
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 724
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 725
    iget-object v3, v0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mMeshParameters:[Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    move v5, v3

    .line 726
    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 728
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    move/from16 v5, p5

    .line 730
    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 731
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 732
    iget-object v5, v0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mMeshParameters:[Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    aget-object v5, v5, v6

    iget v5, v5, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    const/4 v7, 0x2

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    move v6, v5

    .line 733
    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 735
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 736
    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 737
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 739
    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 740
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 741
    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 742
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 744
    iget-object v2, v0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mMeshParameters:[Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    move v6, p2

    int-to-float v6, v6

    move v7, p3

    int-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object p1, p0

    move-object p2, v2

    move p3, v6

    move/from16 p4, v7

    move/from16 p5, v8

    move/from16 p6, v9

    invoke-direct/range {p1 .. p6}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->setMatrix([Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;FFFF)V

    const/4 v2, 0x5

    const/16 v6, 0x1401

    move/from16 v7, p7

    .line 745
    invoke-static {v2, v7, v6, v4}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 746
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 748
    invoke-static {v3}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 749
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 750
    invoke-static {v5}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 751
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 752
    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 753
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 754
    iget v1, v0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCountDrawMesh:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCountDrawMesh:I

    return-void
.end method

.method public drawMixed(Lcn/nubia/gallery3d/glrenderer/BasicTexture;IFIIII)V
    .locals 6

    .line 759
    iget-object v2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    invoke-static {p1, v2}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->copyTextureCoordinates(Lcn/nubia/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;)V

    .line 760
    iget-object v2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    int-to-float v4, p4

    int-to-float v5, p5

    add-int v0, p4, p6

    int-to-float v0, v0

    add-int v1, p5, p7

    int-to-float v1, v1

    invoke-virtual {v2, v4, v5, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 761
    iget-object v4, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->drawMixed(Lcn/nubia/gallery3d/glrenderer/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void
.end method

.method public drawMixed(Lcn/nubia/gallery3d/glrenderer/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6

    .line 766
    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 769
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->save(I)V

    .line 771
    invoke-virtual {p0}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->getAlpha()F

    move-result v0

    .line 772
    invoke-static {v1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    sub-float/2addr v1, p3

    mul-float/2addr v1, v0

    .line 775
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->setAlpha(F)V

    .line 776
    invoke-virtual {p0, p1, p4, p5}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->drawTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    mul-float/2addr p3, v0

    .line 779
    invoke-virtual {p0, p3}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->setAlpha(F)V

    .line 780
    iget v1, p5, Landroid/graphics/RectF;->left:F

    iget v2, p5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v4

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->fillRect(FFFFI)V

    .line 782
    invoke-virtual {p0}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->restore()V

    :cond_1
    :goto_0
    return-void
.end method

.method public drawRect(FFFFLcn/nubia/gallery3d/glrenderer/GLPaint;)V
    .locals 9

    const/4 v1, 0x2

    const/4 v2, 0x6

    const/4 v3, 0x4

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    .line 487
    invoke-direct/range {v0 .. v8}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->draw(IIIFFFFLcn/nubia/gallery3d/glrenderer/GLPaint;)V

    .line 488
    iget p1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCountDrawLine:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCountDrawLine:I

    return-void
.end method

.method public drawTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;IIII)V
    .locals 3

    if-lez p4, :cond_1

    if-gtz p5, :cond_0

    goto :goto_0

    .line 586
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->copyTextureCoordinates(Lcn/nubia/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;)V

    .line 587
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    int-to-float v1, p2

    int-to-float v2, p3

    add-int/2addr p2, p4

    int-to-float p2, p2

    add-int/2addr p3, p5

    int-to-float p3, p3

    invoke-virtual {v0, v1, v2, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 588
    iget-object p2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-static {p2, p3, p1}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcn/nubia/gallery3d/glrenderer/BasicTexture;)V

    .line 589
    iget-object p2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->drawTextureRect(Lcn/nubia/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public drawTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 2

    .line 608
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 611
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 612
    iget-object p2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p2, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 614
    iget-object p2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-static {p2, p3, p1}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcn/nubia/gallery3d/glrenderer/BasicTexture;)V

    .line 615
    iget-object p2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->drawTextureRect(Lcn/nubia/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public drawTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;[FIIII)V
    .locals 3

    if-lez p5, :cond_1

    if-gtz p6, :cond_0

    goto :goto_0

    .line 624
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    int-to-float v1, p3

    int-to-float v2, p4

    add-int/2addr p3, p5

    int-to-float p3, p3

    add-int/2addr p4, p6

    int-to-float p4, p4

    invoke-virtual {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 625
    iget-object p3, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->drawTextureRect(Lcn/nubia/gallery3d/glrenderer/BasicTexture;[FLandroid/graphics/RectF;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dumpStatisticsAndClear()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 822
    iget v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCountDrawMesh:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCountTextureRect:I

    .line 823
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCountFillRect:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iget v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCountDrawLine:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "MESH:%d, TEX_RECT:%d, FILL_RECT:%d, LINE:%d"

    .line 822
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 824
    iput v2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCountDrawMesh:I

    .line 825
    iput v2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCountTextureRect:I

    .line 826
    iput v2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCountFillRect:I

    .line 827
    iput v2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCountDrawLine:I

    .line 828
    sget-object v1, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public endRenderTarget()V
    .locals 2

    .line 833
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/glrenderer/RawTexture;

    .line 834
    invoke-direct {p0}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->getTargetTexture()Lcn/nubia/gallery3d/glrenderer/RawTexture;

    move-result-object v1

    .line 835
    invoke-direct {p0, v0, v1}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->setRenderTarget(Lcn/nubia/gallery3d/glrenderer/BasicTexture;Lcn/nubia/gallery3d/glrenderer/RawTexture;)V

    .line 836
    invoke-virtual {p0}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->restore()V

    return-void
.end method

.method public fillRect(FFFFI)V
    .locals 10

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v9, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .line 576
    invoke-direct/range {v0 .. v9}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->draw(IIIFFFFIF)V

    .line 578
    iget p1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCountFillRect:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCountFillRect:I

    return-void
.end method

.method public getAlpha()F
    .locals 2

    .line 379
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    iget v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public getBounds(Landroid/graphics/Rect;IIII)V
    .locals 10

    .line 994
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    iget-object v2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v3, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    int-to-float v4, p2

    int-to-float v5, p3

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 995
    iget-object p2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    int-to-float p3, p4

    int-to-float p4, p5

    const/4 p5, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, p5, p3, p4, v0}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 996
    iget-object v3, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    sget-object v8, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->BOUNDS_COORDINATES:[F

    const/16 v2, 0x10

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v3

    move-object v5, v8

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 997
    iget-object v6, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    const/16 v5, 0x14

    const/4 v7, 0x0

    const/4 v9, 0x4

    move-object v4, v6

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 998
    iget-object p2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    const/16 p3, 0x10

    aget p2, p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 999
    iget-object p2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    const/16 p3, 0x14

    aget p2, p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 1000
    iget-object p2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    const/16 p3, 0x11

    aget p2, p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 1001
    iget-object p2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    const/16 p3, 0x15

    aget p2, p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 1002
    invoke-virtual {p1}, Landroid/graphics/Rect;->sort()V

    return-void
.end method

.method public getGLId()Lcn/nubia/gallery3d/glrenderer/GLId;
    .locals 1

    .line 1007
    sget-object v0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mGLId:Lcn/nubia/gallery3d/glrenderer/GLId;

    return-object v0
.end method

.method public initializeTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 926
    invoke-virtual {p1}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    .line 927
    invoke-virtual {p1}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result p1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 928
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    const/4 p1, 0x0

    .line 929
    invoke-static {v0, p1, p2, p1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    return-void
.end method

.method public initializeTextureSize(Lcn/nubia/gallery3d/glrenderer/BasicTexture;II)V
    .locals 9

    .line 916
    invoke-virtual {p1}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    .line 917
    invoke-virtual {p1}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 918
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 919
    invoke-virtual {p1}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v3

    .line 920
    invoke-virtual {p1}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->getTextureHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move v2, p2

    move v6, p2

    move v7, p3

    .line 921
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public multiplyAlpha(F)V
    .locals 1

    .line 389
    invoke-virtual {p0}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->getAlpha()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->setAlpha(F)V

    return-void
.end method

.method public multiplyMatrix([FI)V
    .locals 9

    .line 430
    iget-object v6, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    .line 431
    iget-object v7, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    .line 432
    iget v8, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    const/4 v1, 0x0

    move-object v0, v6

    move-object v2, v7

    move v3, v8

    move-object v4, p1

    move v5, p2

    .line 433
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/4 p1, 0x0

    const/16 p2, 0x10

    .line 434
    invoke-static {v6, p1, v7, v8, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public recoverFromLightCycle()V
    .locals 3

    .line 986
    iget v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mWidth:I

    iget v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mHeight:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/16 v0, 0xb71

    .line 987
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/4 v0, 0x1

    const/16 v1, 0x303

    .line 988
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 989
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return-void
.end method

.method public restore()V
    .locals 4

    .line 467
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mSaveFlags:Lcn/nubia/gallery3d/util/IntArray;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/util/IntArray;->removeLast()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 470
    iget v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    :cond_1
    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    move v2, v3

    :cond_2
    if-eqz v2, :cond_3

    .line 474
    iget v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    add-int/lit8 v0, v0, -0x10

    iput v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    :cond_3
    return-void
.end method

.method public rotate(FFFF)V
    .locals 7

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    const/4 v2, 0x0

    move-object v1, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 421
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 422
    iget-object p1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    .line 423
    iget p2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    const/16 v2, 0x10

    const/4 v6, 0x0

    move-object v3, p1

    move v4, p2

    move-object v5, v0

    .line 424
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/16 p3, 0x10

    .line 425
    invoke-static {v0, p3, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public save()V
    .locals 1

    const/4 v0, -0x1

    .line 439
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->save(I)V

    return-void
.end method

.method public save(I)V
    .locals 7

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x2

    if-eqz v0, :cond_2

    .line 446
    invoke-virtual {p0}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->getAlpha()F

    move-result v0

    .line 447
    iget v4, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    add-int/2addr v4, v2

    iput v4, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    .line 448
    iget-object v5, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    array-length v6, v5

    if-gt v6, v4, :cond_1

    .line 449
    array-length v4, v5

    mul-int/2addr v4, v3

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    .line 451
    :cond_1
    iget-object v4, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    iget v5, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    aput v0, v4, v5

    :cond_2
    and-int/lit8 v0, p1, 0x2

    if-ne v0, v3, :cond_3

    move v1, v2

    :cond_3
    if-eqz v1, :cond_5

    .line 455
    iget v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    add-int/lit8 v1, v0, 0x10

    .line 456
    iput v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    .line 457
    iget-object v2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    array-length v4, v2

    if-gt v4, v1, :cond_4

    .line 458
    array-length v1, v2

    mul-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    .line 460
    :cond_4
    iget-object v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    const/16 v3, 0x10

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 462
    :cond_5
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mSaveFlags:Lcn/nubia/gallery3d/util/IntArray;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/util/IntArray;->add(I)V

    return-void
.end method

.method public scale(FFF)V
    .locals 2

    .line 412
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    .line 384
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    iget v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    aput p1, v0, v1

    return-void
.end method

.method public setSize(II)V
    .locals 10

    .line 347
    iput p1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mWidth:I

    .line 348
    iput p2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mHeight:I

    const/4 v0, 0x0

    .line 349
    invoke-static {v0, v0, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 350
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 351
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 352
    iget-object v2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mProjectionMatrix:[F

    int-to-float v5, p1

    int-to-float v0, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move v7, v0

    invoke-static/range {v2 .. v9}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 353
    invoke-direct {p0}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->getTargetTexture()Lcn/nubia/gallery3d/glrenderer/RawTexture;

    move-result-object v1

    if-nez v1, :cond_0

    .line 354
    iput p1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mScreenWidth:I

    .line 355
    iput p2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mScreenHeight:I

    .line 356
    iget-object p1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget p2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 357
    iget-object p1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget p2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, p2, v1, v0, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_0
    return-void
.end method

.method public setTextureParameters(Lcn/nubia/gallery3d/glrenderer/BasicTexture;)V
    .locals 2

    .line 905
    invoke-virtual {p1}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    .line 906
    invoke-virtual {p1}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result p1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 907
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    const/16 p1, 0x2802

    const v1, 0x812f

    .line 908
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2803

    .line 909
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2801

    const v1, 0x46180400    # 9729.0f

    .line 910
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2800

    .line 911
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    return-void
.end method

.method public texSubImage2D(Lcn/nubia/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V
    .locals 7

    .line 935
    invoke-virtual {p1}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    .line 936
    invoke-virtual {p1}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result p1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 937
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 938
    invoke-static/range {v0 .. v6}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    return-void
.end method

.method public translate(FF)V
    .locals 6

    .line 402
    iget v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    .line 403
    iget-object v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    add-int/lit8 v2, v0, 0xc

    .line 404
    aget v3, v1, v2

    add-int/lit8 v4, v0, 0x0

    aget v4, v1, v4

    mul-float/2addr v4, p1

    add-int/lit8 v5, v0, 0x4

    aget v5, v1, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v0, 0xd

    .line 405
    aget v3, v1, v2

    add-int/lit8 v4, v0, 0x1

    aget v4, v1, v4

    mul-float/2addr v4, p1

    add-int/lit8 v5, v0, 0x5

    aget v5, v1, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v0, 0xe

    .line 406
    aget v3, v1, v2

    add-int/lit8 v4, v0, 0x2

    aget v4, v1, v4

    mul-float/2addr v4, p1

    add-int/lit8 v5, v0, 0x6

    aget v5, v1, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v0, 0xf

    .line 407
    aget v3, v1, v2

    add-int/lit8 v4, v0, 0x3

    aget v4, v1, v4

    mul-float/2addr v4, p1

    add-int/lit8 v0, v0, 0x7

    aget p1, v1, v0

    mul-float/2addr p1, p2

    add-float/2addr v4, p1

    add-float/2addr v3, v4

    aput v3, v1, v2

    return-void
.end method

.method public translate(FFF)V
    .locals 2

    .line 394
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method public unloadTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;)Z
    .locals 3

    .line 787
    invoke-virtual {p1}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    iget-object v1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mUnboundTextures:Lcn/nubia/gallery3d/util/IntArray;

    monitor-enter v1

    .line 790
    :try_start_0
    iget-object v2, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->mUnboundTextures:Lcn/nubia/gallery3d/util/IntArray;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result p1

    invoke-virtual {v2, p1}, Lcn/nubia/gallery3d/util/IntArray;->add(I)V

    .line 791
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return v0
.end method

.method public uploadBuffer(Ljava/nio/ByteBuffer;)I
    .locals 1

    const/4 v0, 0x1

    .line 948
    invoke-direct {p0, p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->uploadBuffer(Ljava/nio/Buffer;I)I

    move-result p1

    return p1
.end method

.method public uploadBuffer(Ljava/nio/FloatBuffer;)I
    .locals 1

    const/4 v0, 0x4

    .line 943
    invoke-direct {p0, p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->uploadBuffer(Ljava/nio/Buffer;I)I

    move-result p1

    return p1
.end method

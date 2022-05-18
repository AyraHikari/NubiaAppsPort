.class Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;
.super Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;
.source "GLES20Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UniformShaderParameter"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public loadHandle(I)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;->mName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;->handle:I

    .line 200
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return-void
.end method

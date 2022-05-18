.class public Lcn/nubia/camera/z/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;[BII)Landroid/graphics/Bitmap;
    .locals 3

    .line 44
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0

    .line 45
    new-instance v0, Landroid/renderscript/Type$Builder;

    invoke-static {p0}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    array-length v1, p1

    invoke-virtual {v0, v1}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object v0

    .line 46
    new-instance v1, Landroid/renderscript/Type$Builder;

    invoke-static {p0}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    invoke-virtual {v1, p2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    move-result-object v1

    .line 47
    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 48
    invoke-virtual {v1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v1

    invoke-static {p0, v1, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 49
    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyFrom([B)V

    .line 50
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object p1

    .line 51
    invoke-virtual {p1, v0}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->setInput(Landroid/renderscript/Allocation;)V

    .line 52
    invoke-virtual {p1, v1}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->forEach(Landroid/renderscript/Allocation;)V

    .line 53
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 54
    invoke-virtual {v1, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 55
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->finish()V

    .line 56
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->destroy()V

    return-object p1
.end method

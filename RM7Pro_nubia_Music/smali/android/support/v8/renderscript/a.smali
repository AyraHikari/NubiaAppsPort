.class Landroid/support/v8/renderscript/a;
.super Landroid/support/v8/renderscript/Allocation;
.source "AllocationThunker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v8/renderscript/a$1;
    }
.end annotation


# static fields
.field static n:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field m:Landroid/renderscript/Allocation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 219
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Landroid/support/v8/renderscript/a;->n:Landroid/graphics/BitmapFactory$Options;

    .line 221
    sget-object v0, Landroid/support/v8/renderscript/a;->n:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 222
    return-void
.end method

.method constructor <init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;ILandroid/renderscript/Allocation;)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)V

    .line 70
    iput-object p2, p0, Landroid/support/v8/renderscript/a;->a:Landroid/support/v8/renderscript/Type;

    .line 71
    iput p3, p0, Landroid/support/v8/renderscript/a;->c:I

    .line 72
    iput-object p4, p0, Landroid/support/v8/renderscript/a;->m:Landroid/renderscript/Allocation;

    .line 73
    return-void
.end method

.method static a(Landroid/support/v8/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation$MipmapControl;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Landroid/support/v8/renderscript/a$1;->a:[I

    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation$MipmapControl;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 48
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 42
    :pswitch_0
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    goto :goto_0

    .line 44
    :pswitch_1
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    goto :goto_0

    .line 46
    :pswitch_2
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_ON_SYNC_TO_TEXTURE:Landroid/renderscript/Allocation$MipmapControl;

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static b(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
    .locals 3

    .prologue
    .line 239
    move-object v0, p0

    check-cast v0, Landroid/support/v8/renderscript/e;

    .line 240
    iget-object v0, v0, Landroid/support/v8/renderscript/e;->s:Landroid/renderscript/RenderScript;

    invoke-static {p2}, Landroid/support/v8/renderscript/a;->a(Landroid/support/v8/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation$MipmapControl;

    move-result-object v1

    invoke-static {v0, p1, v1, p3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 243
    new-instance v1, Landroid/support/v8/renderscript/k;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/support/v8/renderscript/k;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Type;)V

    .line 245
    new-instance v2, Landroid/support/v8/renderscript/a;

    invoke-direct {v2, p0, v1, p3, v0}, Landroid/support/v8/renderscript/a;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;ILandroid/renderscript/Allocation;)V

    return-object v2
.end method


# virtual methods
.method public a()Landroid/support/v8/renderscript/Element;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/support/v8/renderscript/a;->b()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->a()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Landroid/support/v8/renderscript/a;->m:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 203
    return-void
.end method

.method public b()Landroid/support/v8/renderscript/Type;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v8/renderscript/a;->m:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v8/renderscript/k;->a(Landroid/renderscript/Type;)Landroid/support/v8/renderscript/Type;

    move-result-object v0

    return-object v0
.end method

.method c()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Landroid/support/v8/renderscript/a;->m:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method synthetic d()Landroid/renderscript/BaseObj;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/support/v8/renderscript/a;->c()Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

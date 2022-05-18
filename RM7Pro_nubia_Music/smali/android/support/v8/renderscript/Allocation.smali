.class public Landroid/support/v8/renderscript/Allocation;
.super Landroid/support/v8/renderscript/b;
.source "Allocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v8/renderscript/Allocation$1;,
        Landroid/support/v8/renderscript/Allocation$MipmapControl;
    }
.end annotation


# static fields
.field static l:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field a:Landroid/support/v8/renderscript/Type;

.field b:Landroid/graphics/Bitmap;

.field c:I

.field d:I

.field e:Z

.field f:Z

.field g:Landroid/support/v8/renderscript/Type$CubemapFace;

.field h:I

.field i:I

.field j:I

.field k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1189
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Landroid/support/v8/renderscript/Allocation;->l:Landroid/graphics/BitmapFactory$Options;

    .line 1191
    sget-object v0, Landroid/support/v8/renderscript/Allocation;->l:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 1192
    return-void
.end method

.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 219
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/b;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 70
    iput-boolean v2, p0, Landroid/support/v8/renderscript/Allocation;->e:Z

    .line 71
    iput-boolean v2, p0, Landroid/support/v8/renderscript/Allocation;->f:Z

    .line 75
    sget-object v0, Landroid/support/v8/renderscript/Type$CubemapFace;->a:Landroid/support/v8/renderscript/Type$CubemapFace;

    iput-object v0, p0, Landroid/support/v8/renderscript/Allocation;->g:Landroid/support/v8/renderscript/Type$CubemapFace;

    .line 220
    and-int/lit16 v0, p4, -0xe4

    if-eqz v0, :cond_0

    .line 225
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Unknown usage specified."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    and-int/lit8 v0, p4, 0x20

    if-eqz v0, :cond_1

    .line 229
    iput-boolean v1, p0, Landroid/support/v8/renderscript/Allocation;->f:Z

    .line 231
    and-int/lit8 v0, p4, -0x24

    if-eqz v0, :cond_1

    .line 234
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid usage combination."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_1
    iput-object p3, p0, Landroid/support/v8/renderscript/Allocation;->a:Landroid/support/v8/renderscript/Type;

    .line 239
    iput p4, p0, Landroid/support/v8/renderscript/Allocation;->c:I

    .line 240
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->a:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->i()I

    move-result v0

    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->a:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->a()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element;->a()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/support/v8/renderscript/Allocation;->d:I

    .line 242
    if-eqz p3, :cond_2

    .line 243
    invoke-direct {p0, p3}, Landroid/support/v8/renderscript/Allocation;->a(Landroid/support/v8/renderscript/Type;)V

    .line 245
    :cond_2
    sget-boolean v0, Landroid/support/v8/renderscript/RenderScript;->b:Z

    if-ne v0, v2, :cond_3

    .line 247
    :try_start_0
    sget-object v0, Landroid/support/v8/renderscript/RenderScript;->d:Ljava/lang/reflect/Method;

    sget-object v1, Landroid/support/v8/renderscript/RenderScript;->c:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :cond_3
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    const-string v1, "RenderScript_jni"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t invoke registerNativeAllocation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v1, Landroid/support/v8/renderscript/RSRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t invoke registerNativeAllocation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1333
    sget-boolean v0, Landroid/support/v8/renderscript/RenderScript;->g:Z

    if-eqz v0, :cond_0

    .line 1334
    check-cast p0, Landroid/support/v8/renderscript/e;

    .line 1335
    invoke-static {p0, p1, p2, p3}, Landroid/support/v8/renderscript/a;->b(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    .line 1372
    :goto_0
    return-object v0

    .line 1337
    :cond_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->c()V

    .line 1340
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1341
    and-int/lit16 v0, p3, 0x80

    if-eqz v0, :cond_1

    .line 1342
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "USAGE_SHARED cannot be used with a Bitmap that has a null config."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1344
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1345
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1346
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1347
    invoke-static {p0, v0, p2, p3}, Landroid/support/v8/renderscript/Allocation;->a(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    goto :goto_0

    .line 1350
    :cond_2
    invoke-static {p0, p1, p2}, Landroid/support/v8/renderscript/Allocation;->a(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;)Landroid/support/v8/renderscript/Type;

    move-result-object v1

    .line 1353
    sget-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->a:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    if-ne p2, v0, :cond_4

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->a()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->f(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Element;->a(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x83

    if-ne p3, v0, :cond_4

    .line 1356
    invoke-virtual {v1, p0}, Landroid/support/v8/renderscript/Type;->a(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v0

    iget v2, p2, Landroid/support/v8/renderscript/Allocation$MipmapControl;->d:I

    invoke-virtual {p0, v0, v2, p1, p3}, Landroid/support/v8/renderscript/RenderScript;->b(IILandroid/graphics/Bitmap;I)I

    move-result v2

    .line 1357
    if-nez v2, :cond_3

    .line 1358
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Load failed."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1362
    :cond_3
    new-instance v0, Landroid/support/v8/renderscript/Allocation;

    invoke-direct {v0, v2, p0, v1, p3}, Landroid/support/v8/renderscript/Allocation;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)V

    .line 1363
    invoke-direct {v0, p1}, Landroid/support/v8/renderscript/Allocation;->b(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1368
    :cond_4
    invoke-virtual {v1, p0}, Landroid/support/v8/renderscript/Type;->a(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v0

    iget v2, p2, Landroid/support/v8/renderscript/Allocation$MipmapControl;->d:I

    invoke-virtual {p0, v0, v2, p1, p3}, Landroid/support/v8/renderscript/RenderScript;->a(IILandroid/graphics/Bitmap;I)I

    move-result v2

    .line 1369
    if-nez v2, :cond_5

    .line 1370
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Load failed."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1372
    :cond_5
    new-instance v0, Landroid/support/v8/renderscript/Allocation;

    invoke-direct {v0, v2, p0, v1, p3}, Landroid/support/v8/renderscript/Allocation;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)V

    goto/16 :goto_0
.end method

.method static a(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Element;
    .locals 4

    .prologue
    .line 1291
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 1292
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    .line 1293
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->c(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    .line 1302
    :goto_0
    return-object v0

    .line 1295
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1

    .line 1296
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->e(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    goto :goto_0

    .line 1298
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_2

    .line 1299
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->f(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    goto :goto_0

    .line 1301
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_3

    .line 1302
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->d(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    goto :goto_0

    .line 1304
    :cond_3
    new-instance v1, Landroid/support/v8/renderscript/RSInvalidStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad bitmap type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static a(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;)Landroid/support/v8/renderscript/Type;
    .locals 2

    .prologue
    .line 1309
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/Allocation;->a(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    .line 1310
    new-instance v1, Landroid/support/v8/renderscript/Type$a;

    invoke-direct {v1, p0, v0}, Landroid/support/v8/renderscript/Type$a;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 1311
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v8/renderscript/Type$a;->a(I)Landroid/support/v8/renderscript/Type$a;

    .line 1312
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v8/renderscript/Type$a;->b(I)Landroid/support/v8/renderscript/Type$a;

    .line 1313
    sget-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->b:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v8/renderscript/Type$a;->a(Z)Landroid/support/v8/renderscript/Type$a;

    .line 1314
    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type$a;->a()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    return-object v0

    .line 1313
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/support/v8/renderscript/Type;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 202
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Type;->b()I

    move-result v0

    iput v0, p0, Landroid/support/v8/renderscript/Allocation;->h:I

    .line 203
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Type;->c()I

    move-result v0

    iput v0, p0, Landroid/support/v8/renderscript/Allocation;->i:I

    .line 204
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Type;->f()I

    move-result v0

    iput v0, p0, Landroid/support/v8/renderscript/Allocation;->j:I

    .line 205
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->h:I

    iput v0, p0, Landroid/support/v8/renderscript/Allocation;->k:I

    .line 206
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->i:I

    if-le v0, v2, :cond_0

    .line 207
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->k:I

    iget v1, p0, Landroid/support/v8/renderscript/Allocation;->i:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/support/v8/renderscript/Allocation;->k:I

    .line 209
    :cond_0
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->j:I

    if-le v0, v2, :cond_1

    .line 210
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->k:I

    iget v1, p0, Landroid/support/v8/renderscript/Allocation;->j:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/support/v8/renderscript/Allocation;->k:I

    .line 212
    :cond_1
    return-void
.end method

.method public static b(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;
    .locals 2

    .prologue
    .line 1388
    sget-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->a:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    const/16 v1, 0x83

    invoke-static {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->a(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Landroid/support/v8/renderscript/Allocation;->b:Landroid/graphics/Bitmap;

    .line 216
    return-void
.end method

.method private c(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 395
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 396
    if-nez v0, :cond_0

    .line 397
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Bitmap has an unsupported format for this operation"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_0
    sget-object v1, Landroid/support/v8/renderscript/Allocation$1;->a:[I

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 441
    :cond_1
    return-void

    .line 401
    :pswitch_0
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->a:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->a()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v8/renderscript/Element;->c:Landroid/support/v8/renderscript/Element$DataKind;

    sget-object v2, Landroid/support/v8/renderscript/Element$DataKind;->c:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq v1, v2, :cond_1

    .line 402
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocation kind is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->a:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->a()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/support/v8/renderscript/Element;->c:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->a:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->a()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/support/v8/renderscript/Element;->b:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->a:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->a()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Element;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, passed bitmap was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 410
    :pswitch_1
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->a:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->a()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v8/renderscript/Element;->c:Landroid/support/v8/renderscript/Element$DataKind;

    sget-object v2, Landroid/support/v8/renderscript/Element$DataKind;->f:Landroid/support/v8/renderscript/Element$DataKind;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->a:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->a()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element;->a()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 412
    :cond_2
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocation kind is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->a:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->a()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/support/v8/renderscript/Element;->c:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->a:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->a()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/support/v8/renderscript/Element;->b:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->a:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->a()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Element;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, passed bitmap was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 420
    :pswitch_2
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->a:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->a()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v8/renderscript/Element;->c:Landroid/support/v8/renderscript/Element$DataKind;

    sget-object v2, Landroid/support/v8/renderscript/Element$DataKind;->e:Landroid/support/v8/renderscript/Element$DataKind;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->a:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->a()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element;->a()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 422
    :cond_3
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocation kind is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->a:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->a()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/support/v8/renderscript/Element;->c:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->a:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->a()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/support/v8/renderscript/Element;->b:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->a:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->a()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Element;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, passed bitmap was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 430
    :pswitch_3
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->a:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->a()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v8/renderscript/Element;->c:Landroid/support/v8/renderscript/Element$DataKind;

    sget-object v2, Landroid/support/v8/renderscript/Element$DataKind;->f:Landroid/support/v8/renderscript/Element$DataKind;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->a:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->a()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element;->a()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 432
    :cond_4
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocation kind is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->a:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->a()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/support/v8/renderscript/Element;->c:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->a:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->a()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/support/v8/renderscript/Element;->b:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->a:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->a()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Element;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, passed bitmap was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 399
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private d(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 444
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->h:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->i:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 445
    :cond_0
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Cannot update allocation from bitmap, sizes mismatch"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v8/renderscript/Element;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->a:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->a()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 1129
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->o:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->c()V

    .line 1130
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/Allocation;->c(Landroid/graphics/Bitmap;)V

    .line 1131
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/Allocation;->d(Landroid/graphics/Bitmap;)V

    .line 1132
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->o:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->o:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Allocation;->a(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v8/renderscript/RenderScript;->a(ILandroid/graphics/Bitmap;)V

    .line 1133
    return-void
.end method

.method public b()Landroid/support/v8/renderscript/Type;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->a:Landroid/support/v8/renderscript/Type;

    return-object v0
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 256
    sget-boolean v0, Landroid/support/v8/renderscript/RenderScript;->b:Z

    if-ne v0, v2, :cond_0

    .line 257
    sget-object v0, Landroid/support/v8/renderscript/RenderScript;->e:Ljava/lang/reflect/Method;

    sget-object v1, Landroid/support/v8/renderscript/RenderScript;->c:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_0
    invoke-super {p0}, Landroid/support/v8/renderscript/b;->finalize()V

    .line 260
    return-void
.end method

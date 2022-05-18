.class public abstract Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field protected static final SIMPLE_ICONS:Z = true

.field private static sActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private mEnvironment:Lcom/android/gallery3d/filtershow/pipeline/e;

.field protected mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mEnvironment:Lcom/android/gallery3d/filtershow/pipeline/e;

    const-string v0, "Original"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    const-string v0, "ImageFilter"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/android/gallery3d/filtershow/FilterShowActivity;
    .locals 1

    sget-object v0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->sActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    return-object v0
.end method

.method public static getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;
    .locals 1

    sget-object v0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->sActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    return-object v0
.end method

.method public static resetStatics()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->sActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    return-void
.end method

.method public static setActivityForMemoryToasts(Landroid/app/Activity;)V
    .locals 0

    check-cast p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    sput-object p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->sActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setGeneralParameters()V

    return-object p1
.end method

.method public apply(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setGeneralParameters()V

    return-void
.end method

.method public collageApply(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    return-object p1
.end method

.method public displayLowMemoryToast()V
    .locals 2

    sget-object v0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->sActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/gallery3d/filtershow/filters/ImageFilter$a;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter$a;-><init>(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public freeResources()V
    .locals 0

    return-void
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnvironment()Lcom/android/gallery3d/filtershow/pipeline/e;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mEnvironment:Lcom/android/gallery3d/filtershow/pipeline/e;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected getOriginalToScreenMatrix(II)Landroid/graphics/Matrix;
    .locals 3

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->F()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getEnvironment()Lcom/android/gallery3d/filtershow/pipeline/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/e;->g()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->s()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->F()Landroid/graphics/Rect;

    move-result-object v2

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/h;->p(Ljava/util/Collection;ZLandroid/graphics/Rect;FF)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    return-object p1
.end method

.method protected native nativeApplyGradientFilter(Landroid/graphics/Bitmap;II[I[I[I)V
.end method

.method public setEnvironment(Lcom/android/gallery3d/filtershow/pipeline/e;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mEnvironment:Lcom/android/gallery3d/filtershow/pipeline/e;

    return-void
.end method

.method public setGeneralParameters()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mEnvironment:Lcom/android/gallery3d/filtershow/pipeline/e;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/e;->c()V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    return-void
.end method

.method public supportsAllocationInput()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract useRepresentation(Lcom/android/gallery3d/filtershow/filters/x;)V
.end method

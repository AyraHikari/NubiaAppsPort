.class public Lcom/android/gallery3d/filtershow/filters/g0;
.super Lcom/android/gallery3d/filtershow/filters/a;
.source ""


# static fields
.field private static w:Lcom/android/gallery3d/filtershow/filters/g0;

.field private static x:Lcom/android/gallery3d/filtershow/filters/g0;

.field private static y:Lcom/android/gallery3d/filtershow/filters/g0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/a;-><init>()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/a;->N()V

    return-void
.end method

.method public static V()Lcom/android/gallery3d/filtershow/filters/g0;
    .locals 1

    sget-object v0, Lcom/android/gallery3d/filtershow/filters/g0;->y:Lcom/android/gallery3d/filtershow/filters/g0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/g0;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/g0;-><init>()V

    sput-object v0, Lcom/android/gallery3d/filtershow/filters/g0;->y:Lcom/android/gallery3d/filtershow/filters/g0;

    :cond_0
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/g0;->y:Lcom/android/gallery3d/filtershow/filters/g0;

    return-object v0
.end method

.method public static W()Lcom/android/gallery3d/filtershow/filters/g0;
    .locals 1

    sget-object v0, Lcom/android/gallery3d/filtershow/filters/g0;->w:Lcom/android/gallery3d/filtershow/filters/g0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/g0;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/g0;-><init>()V

    sput-object v0, Lcom/android/gallery3d/filtershow/filters/g0;->w:Lcom/android/gallery3d/filtershow/filters/g0;

    :cond_0
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/g0;->w:Lcom/android/gallery3d/filtershow/filters/g0;

    return-object v0
.end method

.method public static X()Lcom/android/gallery3d/filtershow/filters/g0;
    .locals 1

    sget-object v0, Lcom/android/gallery3d/filtershow/filters/g0;->x:Lcom/android/gallery3d/filtershow/filters/g0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/g0;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/g0;-><init>()V

    sput-object v0, Lcom/android/gallery3d/filtershow/filters/g0;->x:Lcom/android/gallery3d/filtershow/filters/g0;

    :cond_0
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/g0;->x:Lcom/android/gallery3d/filtershow/filters/g0;

    return-object v0
.end method

.method public static Y()V
    .locals 2

    sget-object v0, Lcom/android/gallery3d/filtershow/filters/g0;->w:Lcom/android/gallery3d/filtershow/filters/g0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->r()V

    sput-object v1, Lcom/android/gallery3d/filtershow/filters/g0;->w:Lcom/android/gallery3d/filtershow/filters/g0;

    :cond_0
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/g0;->x:Lcom/android/gallery3d/filtershow/filters/g0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->r()V

    sput-object v1, Lcom/android/gallery3d/filtershow/filters/g0;->x:Lcom/android/gallery3d/filtershow/filters/g0;

    :cond_1
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/g0;->y:Lcom/android/gallery3d/filtershow/filters/g0;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->r()V

    sput-object v1, Lcom/android/gallery3d/filtershow/filters/g0;->y:Lcom/android/gallery3d/filtershow/filters/g0;

    :cond_2
    return-void
.end method

.method public static Z(Landroid/content/res/Resources;)V
    .locals 1

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->W()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/filters/a;->S(Landroid/content/res/Resources;)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->X()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/filters/a;->S(Landroid/content/res/Resources;)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->V()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/filters/a;->S(Landroid/content/res/Resources;)V

    return-void
.end method

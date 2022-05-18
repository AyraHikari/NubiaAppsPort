.class public Lcn/nubia/gallery3d/app/Config$PanoramaPage;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PanoramaPage"
.end annotation


# static fields
.field private static sInstance:Lcn/nubia/gallery3d/app/Config$PanoramaPage;


# instance fields
.field public slotViewSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 175
    new-instance v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    invoke-direct {v0}, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/Config$PanoramaPage;->slotViewSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    const v1, 0x7f0a0009

    .line 176
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->rowsLand:I

    .line 177
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Config$PanoramaPage;->slotViewSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    const v1, 0x7f0a000a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->rowsPort:I

    .line 178
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Config$PanoramaPage;->slotViewSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    const v1, 0x7f070200

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotWidth:I

    .line 179
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Config$PanoramaPage;->slotViewSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    const v1, 0x7f0701ff

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotHeight:I

    .line 180
    iget-object p1, p0, Lcn/nubia/gallery3d/app/Config$PanoramaPage;->slotViewSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    const/4 v0, 0x4

    iput v0, p1, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotGap:I

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcn/nubia/gallery3d/app/Config$PanoramaPage;
    .locals 2

    const-class v0, Lcn/nubia/gallery3d/app/Config$PanoramaPage;

    monitor-enter v0

    .line 167
    :try_start_0
    sget-object v1, Lcn/nubia/gallery3d/app/Config$PanoramaPage;->sInstance:Lcn/nubia/gallery3d/app/Config$PanoramaPage;

    if-nez v1, :cond_0

    .line 168
    new-instance v1, Lcn/nubia/gallery3d/app/Config$PanoramaPage;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/Config$PanoramaPage;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/nubia/gallery3d/app/Config$PanoramaPage;->sInstance:Lcn/nubia/gallery3d/app/Config$PanoramaPage;

    .line 170
    :cond_0
    sget-object p0, Lcn/nubia/gallery3d/app/Config$PanoramaPage;->sInstance:Lcn/nubia/gallery3d/app/Config$PanoramaPage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

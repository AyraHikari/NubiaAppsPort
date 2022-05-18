.class public Lcn/nubia/gallery3d/app/Config$AlbumSetPage;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumSetPage"
.end annotation


# static fields
.field private static sInstance:Lcn/nubia/gallery3d/app/Config$AlbumSetPage;


# instance fields
.field public labelSpec:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

.field public paddingTop:I

.field public slotViewSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 49
    new-instance v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    invoke-direct {v0}, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    const v1, 0x7f0a0004

    .line 50
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->rowsLand:I

    .line 51
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    const v1, 0x7f0a0005

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->rowsPort:I

    .line 52
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    const v1, 0x7f070066

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotGap:I

    .line 53
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    const v1, 0x7f070063

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->padding:I

    const v0, 0x7f070064

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/app/Config$AlbumSetPage;->paddingTop:I

    .line 60
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    const v1, 0x7f070176

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->menuHeight:I

    .line 62
    new-instance v0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    invoke-direct {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f070061

    .line 63
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    .line 65
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f070069

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->titleOffset:I

    .line 67
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f07005d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->countOffset:I

    .line 69
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f070068

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->titleFontSize:I

    .line 71
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f07005c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->countFontSize:I

    .line 73
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f070062

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    .line 75
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f070059

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->bottomMargin:I

    .line 77
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f07005e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->iconSize:I

    .line 79
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f070067

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->textLimit:I

    .line 80
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f07005f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->iconXMargin:I

    .line 81
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f070060

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->iconYMargin:I

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcn/nubia/gallery3d/app/Config$AlbumSetPage;
    .locals 2

    const-class v0, Lcn/nubia/gallery3d/app/Config$AlbumSetPage;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcn/nubia/gallery3d/app/Config$AlbumSetPage;->sInstance:Lcn/nubia/gallery3d/app/Config$AlbumSetPage;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcn/nubia/gallery3d/app/Config$AlbumSetPage;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/Config$AlbumSetPage;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/nubia/gallery3d/app/Config$AlbumSetPage;->sInstance:Lcn/nubia/gallery3d/app/Config$AlbumSetPage;

    .line 43
    :cond_0
    sget-object p0, Lcn/nubia/gallery3d/app/Config$AlbumSetPage;->sInstance:Lcn/nubia/gallery3d/app/Config$AlbumSetPage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

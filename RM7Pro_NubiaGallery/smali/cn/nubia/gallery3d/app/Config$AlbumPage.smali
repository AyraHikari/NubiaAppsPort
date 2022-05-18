.class public Lcn/nubia/gallery3d/app/Config$AlbumPage;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumPage"
.end annotation


# static fields
.field private static sInstance:Lcn/nubia/gallery3d/app/Config$AlbumPage;


# instance fields
.field public labelSpec:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

.field public slotViewSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 101
    new-instance v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    invoke-direct {v0}, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    const v1, 0x7f0a0002

    .line 102
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->rowsLand:I

    .line 103
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    const v1, 0x7f0a0003

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->rowsPort:I

    .line 104
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    const v1, 0x7f070177

    .line 105
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->moveHeight:I

    .line 106
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    const v1, 0x7f070176

    .line 107
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->menuHeight:I

    .line 109
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    const v1, 0x7f070055

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotGap:I

    .line 110
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcn/nubia/gallery3d/ui/layout/Layout$Spec;

    const v1, 0x7f070056

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/ui/layout/Layout$Spec;->slotGapLand:I

    .line 113
    new-instance v0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

    invoke-direct {v0}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/Config$AlbumPage;->labelSpec:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

    const v1, 0x7f07015e

    .line 114
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;->textFontSize:I

    .line 115
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Config$AlbumPage;->labelSpec:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

    const v1, 0x7f070161

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;->leftMargin:I

    .line 116
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Config$AlbumPage;->labelSpec:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

    const v1, 0x7f07015d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;->bottomMargin:I

    .line 117
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Config$AlbumPage;->labelSpec:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

    const v1, 0x7f070160

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;->iconPadding:I

    .line 118
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Config$AlbumPage;->labelSpec:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

    const v1, 0x7f07015f

    .line 119
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;->iconBottomMargin:I

    .line 121
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Config$AlbumPage;->labelSpec:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

    const v1, 0x7f070163

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;->date_textFontSize:I

    .line 122
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Config$AlbumPage;->labelSpec:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

    const v1, 0x7f070162

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;->date_bottomMargin:I

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcn/nubia/gallery3d/app/Config$AlbumPage;
    .locals 2

    const-class v0, Lcn/nubia/gallery3d/app/Config$AlbumPage;

    monitor-enter v0

    .line 92
    :try_start_0
    sget-object v1, Lcn/nubia/gallery3d/app/Config$AlbumPage;->sInstance:Lcn/nubia/gallery3d/app/Config$AlbumPage;

    if-nez v1, :cond_0

    .line 93
    new-instance v1, Lcn/nubia/gallery3d/app/Config$AlbumPage;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/Config$AlbumPage;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/nubia/gallery3d/app/Config$AlbumPage;->sInstance:Lcn/nubia/gallery3d/app/Config$AlbumPage;

    .line 95
    :cond_0
    sget-object p0, Lcn/nubia/gallery3d/app/Config$AlbumPage;->sInstance:Lcn/nubia/gallery3d/app/Config$AlbumPage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.class Lcn/nubia/music/MediaPlaybackService$d;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/Random;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2802
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService$d;->b:Ljava/util/Random;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/music/MediaPlaybackService$1;)V
    .locals 0

    .prologue
    .line 2800
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .prologue
    .line 2807
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$d;->b:Ljava/util/Random;

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 2808
    iget v1, p0, Lcn/nubia/music/MediaPlaybackService$d;->a:I

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    .line 2809
    :cond_1
    iput v0, p0, Lcn/nubia/music/MediaPlaybackService$d;->a:I

    .line 2810
    return v0
.end method

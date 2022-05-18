.class Lcn/nubia/video/player/common/Bookmarker$Param;
.super Ljava/lang/Object;
.source "Bookmarker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/common/Bookmarker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Param"
.end annotation


# instance fields
.field bookmark:I

.field duration:I

.field final synthetic this$0:Lcn/nubia/video/player/common/Bookmarker;

.field uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Lcn/nubia/video/player/common/Bookmarker;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcn/nubia/video/player/common/Bookmarker$Param;->this$0:Lcn/nubia/video/player/common/Bookmarker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/video/player/common/Bookmarker;Lcn/nubia/video/player/common/Bookmarker$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcn/nubia/video/player/common/Bookmarker$Param;-><init>(Lcn/nubia/video/player/common/Bookmarker;)V

    return-void
.end method

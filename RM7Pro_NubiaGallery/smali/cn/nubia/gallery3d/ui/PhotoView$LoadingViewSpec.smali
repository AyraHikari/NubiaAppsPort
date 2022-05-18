.class Lcn/nubia/gallery3d/ui/PhotoView$LoadingViewSpec;
.super Ljava/lang/Object;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingViewSpec"
.end annotation


# instance fields
.field loadingText:Ljava/lang/String;

.field loadingTextColor:I

.field loadingTextSize:I

.field loadingViewColor:I

.field final synthetic this$0:Lcn/nubia/gallery3d/ui/PhotoView;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/ui/PhotoView;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$LoadingViewSpec;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/ui/PhotoView;Lcn/nubia/gallery3d/ui/PhotoView$1;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/PhotoView$LoadingViewSpec;-><init>(Lcn/nubia/gallery3d/ui/PhotoView;)V

    return-void
.end method

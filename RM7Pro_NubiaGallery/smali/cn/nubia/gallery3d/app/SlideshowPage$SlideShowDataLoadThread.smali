.class Lcn/nubia/gallery3d/app/SlideshowPage$SlideShowDataLoadThread;
.super Ljava/lang/Thread;
.source "SlideshowPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/SlideshowPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideShowDataLoadThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/SlideshowPage;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/app/SlideshowPage;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SlideShowDataLoadThread;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/app/SlideshowPage;Lcn/nubia/gallery3d/app/SlideshowPage$1;)V
    .locals 0

    .line 551
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/SlideshowPage$SlideShowDataLoadThread;-><init>(Lcn/nubia/gallery3d/app/SlideshowPage;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 554
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 555
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SlideShowDataLoadThread;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$2500(Lcn/nubia/gallery3d/app/SlideshowPage;)Ljava/util/ArrayList;

    return-void
.end method

.class Lcn/nubia/gallery3d/ui/GestureRecognizer$MyDownUpListener;
.super Ljava/lang/Object;
.source "GestureRecognizer.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/DownUpDetector$DownUpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDownUpListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/ui/GestureRecognizer;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/ui/GestureRecognizer;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/GestureRecognizer$MyDownUpListener;->this$0:Lcn/nubia/gallery3d/ui/GestureRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/ui/GestureRecognizer;Lcn/nubia/gallery3d/ui/GestureRecognizer$1;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/GestureRecognizer$MyDownUpListener;-><init>(Lcn/nubia/gallery3d/ui/GestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GestureRecognizer$MyDownUpListener;->this$0:Lcn/nubia/gallery3d/ui/GestureRecognizer;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/GestureRecognizer;->access$300(Lcn/nubia/gallery3d/ui/GestureRecognizer;)Lcn/nubia/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcn/nubia/gallery3d/ui/GestureRecognizer$Listener;->onDown(FF)V

    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .locals 0

    .line 140
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/GestureRecognizer$MyDownUpListener;->this$0:Lcn/nubia/gallery3d/ui/GestureRecognizer;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/GestureRecognizer;->access$300(Lcn/nubia/gallery3d/ui/GestureRecognizer;)Lcn/nubia/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/gallery3d/ui/GestureRecognizer$Listener;->onUp()V

    return-void
.end method

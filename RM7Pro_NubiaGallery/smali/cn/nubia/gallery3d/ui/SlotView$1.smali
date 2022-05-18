.class Lcn/nubia/gallery3d/ui/SlotView$1;
.super Ljava/lang/Object;
.source "SlotView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/ui/SlotView;->render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/ui/SlotView;

.field final synthetic val$listener:Lcn/nubia/gallery3d/ui/UserInteractionListener;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/ui/SlotView;Lcn/nubia/gallery3d/ui/UserInteractionListener;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/SlotView$1;->this$0:Lcn/nubia/gallery3d/ui/SlotView;

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/SlotView$1;->val$listener:Lcn/nubia/gallery3d/ui/UserInteractionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 404
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SlotView$1;->val$listener:Lcn/nubia/gallery3d/ui/UserInteractionListener;

    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/UserInteractionListener;->onUserInteractionEnd()V

    return-void
.end method

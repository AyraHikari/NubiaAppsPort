.class Lcn/nubia/gallery3d/ui/ScrollBarView$2;
.super Ljava/lang/Object;
.source "ScrollBarView.java"

# interfaces
.implements Lcn/nubia/improve/layout/ScrollBarFadeAnimation$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/ui/ScrollBarView;->onHide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/ui/ScrollBarView;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/ui/ScrollBarView;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/ScrollBarView$2;->this$0:Lcn/nubia/gallery3d/ui/ScrollBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public AnimationCompleted(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 165
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/ScrollBarView$2;->this$0:Lcn/nubia/gallery3d/ui/ScrollBarView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/ScrollBarView;->invalidate()V

    goto :goto_0

    .line 167
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/ScrollBarView$2;->this$0:Lcn/nubia/gallery3d/ui/ScrollBarView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/ScrollBarView;->setVisibility(I)V

    :goto_0
    return-void
.end method

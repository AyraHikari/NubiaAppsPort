.class Lcn/nubia/gallery3d/app/GifView$1;
.super Ljava/lang/Object;
.source "GifView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/GifView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/GifView;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/GifView;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcn/nubia/gallery3d/app/GifView$1;->this$0:Lcn/nubia/gallery3d/app/GifView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 72
    iget-object p1, p0, Lcn/nubia/gallery3d/app/GifView$1;->this$0:Lcn/nubia/gallery3d/app/GifView;

    iget-boolean p1, p1, Lcn/nubia/gallery3d/app/GifView;->navShow:Z

    if-nez p1, :cond_0

    .line 73
    iget-object p1, p0, Lcn/nubia/gallery3d/app/GifView$1;->this$0:Lcn/nubia/gallery3d/app/GifView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GifView;->ShowNav()V

    .line 74
    iget-object p1, p0, Lcn/nubia/gallery3d/app/GifView$1;->this$0:Lcn/nubia/gallery3d/app/GifView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcn/nubia/gallery3d/app/GifView;->navShow:Z

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/GifView$1;->this$0:Lcn/nubia/gallery3d/app/GifView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GifView;->HideNav()V

    .line 77
    iget-object p1, p0, Lcn/nubia/gallery3d/app/GifView$1;->this$0:Lcn/nubia/gallery3d/app/GifView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcn/nubia/gallery3d/app/GifView;->navShow:Z

    :goto_0
    return-void
.end method

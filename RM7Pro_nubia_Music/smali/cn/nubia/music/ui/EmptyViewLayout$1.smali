.class Lcn/nubia/music/ui/EmptyViewLayout$1;
.super Ljava/lang/Object;
.source "EmptyViewLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/ui/EmptyViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/ui/EmptyViewLayout;


# direct methods
.method constructor <init>(Lcn/nubia/music/ui/EmptyViewLayout;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcn/nubia/music/ui/EmptyViewLayout$1;->a:Lcn/nubia/music/ui/EmptyViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcn/nubia/music/ui/EmptyViewLayout$1;->a:Lcn/nubia/music/ui/EmptyViewLayout;

    invoke-static {v0}, Lcn/nubia/music/ui/EmptyViewLayout;->access$000(Lcn/nubia/music/ui/EmptyViewLayout;)Lcn/nubia/music/ui/EmptyViewLayout$RefreshClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcn/nubia/music/ui/EmptyViewLayout$1;->a:Lcn/nubia/music/ui/EmptyViewLayout;

    invoke-static {v0}, Lcn/nubia/music/ui/EmptyViewLayout;->access$000(Lcn/nubia/music/ui/EmptyViewLayout;)Lcn/nubia/music/ui/EmptyViewLayout$RefreshClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/music/ui/EmptyViewLayout$RefreshClickListener;->refreshData()V

    .line 109
    :cond_0
    return-void
.end method

.class Lcn/nubia/deskclock/ui/ActionBarLayout$TabClickListener;
.super Ljava/lang/Object;
.source "ActionBarLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/ActionBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lcn/nubia/deskclock/ui/ActionBarLayout;


# direct methods
.method public constructor <init>(Lcn/nubia/deskclock/ui/ActionBarLayout;I)V
    .locals 1
    .param p2, "i"    # I

    .prologue
    .line 105
    iput-object p1, p0, Lcn/nubia/deskclock/ui/ActionBarLayout$TabClickListener;->this$0:Lcn/nubia/deskclock/ui/ActionBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/deskclock/ui/ActionBarLayout$TabClickListener;->index:I

    .line 106
    iput p2, p0, Lcn/nubia/deskclock/ui/ActionBarLayout$TabClickListener;->index:I

    .line 107
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    sget-boolean v4, Lcn/nubia/deskclock/DeskClock;->mIsLaunching:Z

    if-eqz v4, :cond_0

    .line 120
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 115
    .local v0, "time":J
    iget-object v4, p0, Lcn/nubia/deskclock/ui/ActionBarLayout$TabClickListener;->this$0:Lcn/nubia/deskclock/ui/ActionBarLayout;

    invoke-static {v4}, Lcn/nubia/deskclock/ui/ActionBarLayout;->access$000(Lcn/nubia/deskclock/ui/ActionBarLayout;)J

    move-result-wide v4

    sub-long v2, v0, v4

    .line 116
    .local v2, "timeD":J
    const-wide/16 v4, 0x64

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    iget-object v4, p0, Lcn/nubia/deskclock/ui/ActionBarLayout$TabClickListener;->this$0:Lcn/nubia/deskclock/ui/ActionBarLayout;

    invoke-static {v4}, Lcn/nubia/deskclock/ui/ActionBarLayout;->access$000(Lcn/nubia/deskclock/ui/ActionBarLayout;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 117
    :cond_1
    iget-object v4, p0, Lcn/nubia/deskclock/ui/ActionBarLayout$TabClickListener;->this$0:Lcn/nubia/deskclock/ui/ActionBarLayout;

    invoke-static {v4}, Lcn/nubia/deskclock/ui/ActionBarLayout;->access$100(Lcn/nubia/deskclock/ui/ActionBarLayout;)Lcn/nubia/deskclock/ui/DeskClockViewPager;

    move-result-object v4

    iget v5, p0, Lcn/nubia/deskclock/ui/ActionBarLayout$TabClickListener;->index:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcn/nubia/deskclock/ui/DeskClockViewPager;->setCurrentItem(IZ)V

    .line 119
    :cond_2
    iget-object v4, p0, Lcn/nubia/deskclock/ui/ActionBarLayout$TabClickListener;->this$0:Lcn/nubia/deskclock/ui/ActionBarLayout;

    invoke-static {v4, v0, v1}, Lcn/nubia/deskclock/ui/ActionBarLayout;->access$002(Lcn/nubia/deskclock/ui/ActionBarLayout;J)J

    goto :goto_0
.end method

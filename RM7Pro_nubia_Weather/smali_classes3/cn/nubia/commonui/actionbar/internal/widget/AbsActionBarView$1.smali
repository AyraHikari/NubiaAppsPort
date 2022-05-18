.class Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$1;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->postShowOverflowMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;

    .prologue
    .line 195
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$1;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$1;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->showOverflowMenu()Z

    .line 198
    return-void
.end method

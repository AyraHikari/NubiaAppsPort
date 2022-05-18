.class Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$2;
.super Ljava/lang/Object;
.source "AlarmRepeatSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;

.field final synthetic val$checkedID:I

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;

    .prologue
    .line 441
    iput-object p1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$2;->this$1:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;

    iput-object p2, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$2;->val$context:Landroid/content/Context;

    iput p3, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$2;->val$checkedID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, "length":I
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isInternalVersion()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 446
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    .line 450
    :goto_0
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$2;->this$1:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;

    iget v2, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$2;->val$checkedID:I

    invoke-static {v1, v2, v0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->access$500(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;II)V

    .line 451
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$2;->this$1:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;

    iget v2, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$2;->val$checkedID:I

    invoke-static {v1, v2}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->access$600(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;I)V

    .line 452
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$2;->this$1:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;

    iget-object v1, v1, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$200(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)V

    .line 453
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$2;->this$1:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;

    iget-object v1, v1, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$700(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)V

    .line 454
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$2;->this$1:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;

    iget-object v1, v1, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$800(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$2;->this$1:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;

    iget-object v1, v1, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;->this$0:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-static {v1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->access$800(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 457
    :cond_0
    return-void

    .line 448
    :cond_1
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    goto :goto_0
.end method

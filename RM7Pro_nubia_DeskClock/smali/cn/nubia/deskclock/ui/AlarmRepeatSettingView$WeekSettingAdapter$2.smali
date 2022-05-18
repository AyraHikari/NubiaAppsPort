.class Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter$2;
.super Ljava/lang/Object;
.source "AlarmRepeatSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;

.field final synthetic val$checkedID:I


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;I)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;

    .prologue
    .line 290
    iput-object p1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter$2;->this$1:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;

    iput p2, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter$2;->val$checkedID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 293
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter$2;->this$1:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;

    iget v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter$2;->val$checkedID:I

    invoke-static {v0, v1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;->access$300(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;I)V

    .line 294
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter$2;->this$1:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;->notifyDataSetChanged()V

    .line 295
    return-void
.end method

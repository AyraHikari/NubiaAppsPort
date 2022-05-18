.class Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter$2;
.super Ljava/lang/Object;
.source "WeekSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;

.field final synthetic val$checkedID:I


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;I)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;

    .prologue
    .line 174
    iput-object p1, p0, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter$2;->this$1:Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;

    iput p2, p0, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter$2;->val$checkedID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 177
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter$2;->this$1:Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;

    iget v1, p0, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter$2;->val$checkedID:I

    invoke-static {v0, v1}, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;->access$000(Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;I)V

    .line 178
    iget-object v0, p0, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter$2;->this$1:Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/WeekSelectActivity$WeekSettingAdapter;->notifyDataSetChanged()V

    .line 179
    return-void
.end method

.class Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter$2;
.super Ljava/lang/Object;
.source "AlarmNameSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;

.field final synthetic val$checkedID:I


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;I)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;

    .prologue
    .line 301
    iput-object p1, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter$2;->this$1:Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;

    iput p2, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter$2;->val$checkedID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 303
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter$2;->this$1:Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;

    iget v1, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter$2;->val$checkedID:I

    invoke-static {v0, v1}, Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;->access$200(Lcn/nubia/deskclock/ui/AlarmNameSettingView$NameSettingAdapter;I)V

    .line 304
    return-void
.end method

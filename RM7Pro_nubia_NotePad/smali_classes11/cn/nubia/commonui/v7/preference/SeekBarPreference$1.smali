.class Lcn/nubia/commonui/v7/preference/SeekBarPreference$1;
.super Ljava/lang/Object;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/v7/preference/SeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/v7/preference/SeekBarPreference;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/v7/preference/SeekBarPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/v7/preference/SeekBarPreference;

    .prologue
    .line 63
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference$1;->this$0:Lcn/nubia/commonui/v7/preference/SeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 66
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference$1;->this$0:Lcn/nubia/commonui/v7/preference/SeekBarPreference;

    invoke-static {v0}, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->access$000(Lcn/nubia/commonui/v7/preference/SeekBarPreference;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference$1;->this$0:Lcn/nubia/commonui/v7/preference/SeekBarPreference;

    invoke-static {v0, p1}, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->access$100(Lcn/nubia/commonui/v7/preference/SeekBarPreference;Landroid/widget/SeekBar;)V

    .line 69
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 73
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference$1;->this$0:Lcn/nubia/commonui/v7/preference/SeekBarPreference;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->access$002(Lcn/nubia/commonui/v7/preference/SeekBarPreference;Z)Z

    .line 74
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 78
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference$1;->this$0:Lcn/nubia/commonui/v7/preference/SeekBarPreference;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->access$002(Lcn/nubia/commonui/v7/preference/SeekBarPreference;Z)Z

    .line 79
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference$1;->this$0:Lcn/nubia/commonui/v7/preference/SeekBarPreference;

    invoke-static {v1}, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->access$200(Lcn/nubia/commonui/v7/preference/SeekBarPreference;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference$1;->this$0:Lcn/nubia/commonui/v7/preference/SeekBarPreference;

    invoke-static {v1}, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->access$300(Lcn/nubia/commonui/v7/preference/SeekBarPreference;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/SeekBarPreference$1;->this$0:Lcn/nubia/commonui/v7/preference/SeekBarPreference;

    invoke-static {v0, p1}, Lcn/nubia/commonui/v7/preference/SeekBarPreference;->access$100(Lcn/nubia/commonui/v7/preference/SeekBarPreference;Landroid/widget/SeekBar;)V

    .line 82
    :cond_0
    return-void
.end method

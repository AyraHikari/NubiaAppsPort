.class Lcn/nubia/deskclock/ui/AlarmNameSettingView$EditTextChangedListener;
.super Ljava/lang/Object;
.source "AlarmNameSettingView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/AlarmNameSettingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditTextChangedListener"
.end annotation


# instance fields
.field private final charMaxNum:I

.field final synthetic this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;


# direct methods
.method private constructor <init>(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)V
    .locals 1

    .prologue
    .line 393
    iput-object p1, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$EditTextChangedListener;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    const/16 v0, 0xa

    iput v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$EditTextChangedListener;->charMaxNum:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/deskclock/ui/AlarmNameSettingView;Lcn/nubia/deskclock/ui/AlarmNameSettingView$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/deskclock/ui/AlarmNameSettingView;
    .param p2, "x1"    # Lcn/nubia/deskclock/ui/AlarmNameSettingView$1;

    .prologue
    .line 393
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/AlarmNameSettingView$EditTextChangedListener;-><init>(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 399
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 403
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 407
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$EditTextChangedListener;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->access$800(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$EditTextChangedListener;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->access$900(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$EditTextChangedListener;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->access$800(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 415
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$EditTextChangedListener;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->access$900(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmNameSettingView$EditTextChangedListener;->this$0:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->access$800(Lcn/nubia/deskclock/ui/AlarmNameSettingView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.class Lcn/nubia/deskclock/control/AlarmClockAnimationControl$1;
.super Ljava/lang/Object;
.source "AlarmClockAnimationControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->initAnimantionParam()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/control/AlarmClockAnimationControl;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/control/AlarmClockAnimationControl;

    .prologue
    .line 153
    iput-object p1, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$1;->this$0:Lcn/nubia/deskclock/control/AlarmClockAnimationControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    iget-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$1;->this$0:Lcn/nubia/deskclock/control/AlarmClockAnimationControl;

    invoke-static {v0}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->access$700(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;)V

    .line 157
    return-void
.end method

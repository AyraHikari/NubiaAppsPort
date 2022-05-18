.class Lcn/nubia/deskclock/ui/SnoozeSettingView$SnoozeListener;
.super Ljava/lang/Object;
.source "SnoozeSettingView.java"

# interfaces
.implements Lcn/nubia/deskclock/ui/SnoozePickerDialog$onSnoozeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/SnoozeSettingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SnoozeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/ui/SnoozeSettingView;


# direct methods
.method private constructor <init>(Lcn/nubia/deskclock/ui/SnoozeSettingView;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView$SnoozeListener;->this$0:Lcn/nubia/deskclock/ui/SnoozeSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/deskclock/ui/SnoozeSettingView;Lcn/nubia/deskclock/ui/SnoozeSettingView$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/deskclock/ui/SnoozeSettingView;
    .param p2, "x1"    # Lcn/nubia/deskclock/ui/SnoozeSettingView$1;

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/SnoozeSettingView$SnoozeListener;-><init>(Lcn/nubia/deskclock/ui/SnoozeSettingView;)V

    return-void
.end method


# virtual methods
.method public onSnoozeSet(Lcn/nubia/deskclock/ui/SnoozePickerView;II)V
    .locals 3
    .param p1, "view"    # Lcn/nubia/deskclock/ui/SnoozePickerView;
    .param p2, "times"    # I
    .param p3, "interval"    # I

    .prologue
    .line 209
    const-string v0, "SnoozeSettingView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "times = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   interval = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView$SnoozeListener;->this$0:Lcn/nubia/deskclock/ui/SnoozeSettingView;

    invoke-static {v0, p2}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->access$102(Lcn/nubia/deskclock/ui/SnoozeSettingView;I)I

    .line 211
    iget-object v0, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView$SnoozeListener;->this$0:Lcn/nubia/deskclock/ui/SnoozeSettingView;

    invoke-static {v0, p3}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->access$202(Lcn/nubia/deskclock/ui/SnoozeSettingView;I)I

    .line 212
    iget-object v0, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView$SnoozeListener;->this$0:Lcn/nubia/deskclock/ui/SnoozeSettingView;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->access$300(Lcn/nubia/deskclock/ui/SnoozeSettingView;)V

    .line 213
    return-void
.end method

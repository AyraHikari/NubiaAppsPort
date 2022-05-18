.class Lcn/nubia/weather/presenter/OverAllControl$ControlHandler$1;
.super Landroid/os/AsyncTask;
.source "OverAllControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/presenter/OverAllControl$ControlHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/weather/presenter/OverAllControl$ControlHandler;


# direct methods
.method constructor <init>(Lcn/nubia/weather/presenter/OverAllControl$ControlHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/weather/presenter/OverAllControl$ControlHandler;

    .prologue
    .line 903
    iput-object p1, p0, Lcn/nubia/weather/presenter/OverAllControl$ControlHandler$1;->this$1:Lcn/nubia/weather/presenter/OverAllControl$ControlHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 903
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/weather/presenter/OverAllControl$ControlHandler$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 907
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$ControlHandler$1;->this$1:Lcn/nubia/weather/presenter/OverAllControl$ControlHandler;

    iget-object v0, v0, Lcn/nubia/weather/presenter/OverAllControl$ControlHandler;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    invoke-static {v0}, Lcn/nubia/weather/presenter/OverAllControl;->access$800(Lcn/nubia/weather/presenter/OverAllControl;)V

    .line 908
    const/4 v0, 0x0

    return-object v0
.end method

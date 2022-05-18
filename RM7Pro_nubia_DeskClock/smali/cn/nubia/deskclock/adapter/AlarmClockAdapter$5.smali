.class Lcn/nubia/deskclock/adapter/AlarmClockAdapter$5;
.super Ljava/lang/Object;
.source "AlarmClockAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->createChoseCloseDialog(Lcn/nubia/deskclock/model/Alarm;Landroid/widget/TextView;Ljava/lang/String;)Lcn/nubia/commonui/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    .prologue
    .line 241
    iput-object p1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$5;->this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 245
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$5;->this$0:Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    invoke-static {v0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->access$000(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 246
    return-void
.end method

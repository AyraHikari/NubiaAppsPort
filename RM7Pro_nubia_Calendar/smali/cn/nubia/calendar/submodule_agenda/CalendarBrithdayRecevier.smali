.class public Lcn/nubia/calendar/submodule_agenda/CalendarBrithdayRecevier;
.super Landroid/content/BroadcastReceiver;
.source "CalendarBrithdayRecevier.java"


# static fields
.field private static final ACTION_DELETE:Ljava/lang/String; = "com.android.contacts.brithday_delete_action"

.field private static final ACTION_INSERT:Ljava/lang/String; = "com.android.contacts.brithday_insert_action"

.field private static final ACTION_UPDATE:Ljava/lang/String; = "com.android.contacts.brithday_update_action"

.field public static final COMMAND:Ljava/lang/String; = "command"

.field public static final COMMAND_DELETE:Ljava/lang/String; = "delete"

.field public static final COMMAND_INSERT:Ljava/lang/String; = "insert"

.field public static final COMMAND_UPDATE:Ljava/lang/String; = "update"

.field public static final EXTRA_NAME:Ljava/lang/String; = "info"

.field private static final TAG:Ljava/lang/String; = "zlx"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "action":Ljava/lang/String;
    const-string v3, ""

    .line 33
    .local v3, "type":Ljava/lang/String;
    const-string v4, "info"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 34
    .local v1, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "com.android.contacts.brithday_update_action"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 35
    const-string v3, "update"

    .line 43
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcn/nubia/calendar/submodule_agenda/ContactsBirthdayGenerateService;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v2, "serviceIntent":Landroid/content/Intent;
    const-string v4, "info"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 46
    const-string v4, "command"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 49
    .end local v2    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 36
    :cond_1
    const-string v4, "com.android.contacts.brithday_insert_action"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 37
    const-string v3, "insert"

    goto :goto_0

    .line 38
    :cond_2
    const-string v4, "com.android.contacts.brithday_delete_action"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    const-string v3, "delete"

    goto :goto_0
.end method

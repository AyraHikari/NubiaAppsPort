.class public Lcom/android/calculator2/ZteTrackProxy;
.super Ljava/lang/Object;
.source "ZteTrackProxy.java"


# static fields
.field public static final EVENT_CONTENT_CHANGE_ORIENTATION:Ljava/lang/String; = "change_orientation"

.field public static final EVENT_CONTENT_CHANGE_TO_FLOAT:Ljava/lang/String; = "change_to_float"

.field public static final EVENT_CONTENT_CHECK_HISTORY_WITH_BUTTON:Ljava/lang/String; = "check_history_with_button"

.field public static final EVENT_CONTENT_CHECK_HISTORY_WITH_DRAG:Ljava/lang/String; = "check_heistory_with_drag"

.field public static final EVENT_CONTENT_COPY_OUT:Ljava/lang/String; = "copy_out"

.field public static final EVENT_CONTENT_LAND_ORIENTATION:Ljava/lang/String; = "land_orientation"

.field public static final EVENT_ID_ONCREATE_ONNEWINTENT:Ljava/lang/String; = "oncreate_onnewintent"

.field private static final EVENT_NAME:Ljava/lang/String; = "event_name"

.field private static final OWNER:Ljava/lang/String; = "com.android.calculator2"

.field private static final OWNER_NAME:Ljava/lang/String; = "owner_name"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendExtendArg(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 27
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 28
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_0
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 30
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 31
    :cond_1
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 32
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static sendEvent(Landroid/os/Bundle;)V
    .locals 1

    .line 37
    invoke-static {}, Lcom/android/calculator2/ZteTrackManager;->getInstance()Lcom/android/calculator2/ZteTrackManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/calculator2/ZteTrackManager;->sendEvent(Landroid/os/Bundle;)V

    return-void
.end method

.method public static sendEvent(Ljava/lang/String;)V
    .locals 3

    .line 20
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "owner_name"

    const-string v2, "com.android.calculator2"

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "event_name"

    .line 22
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/android/calculator2/ZteTrackManager;->getInstance()Lcom/android/calculator2/ZteTrackManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/calculator2/ZteTrackManager;->sendEvent(Landroid/os/Bundle;)V

    return-void
.end method

.method public static sendEvent(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "owner_name"

    const-string v2, "com.android.calculator2"

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "event_name"

    .line 59
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    invoke-static {}, Lcom/android/calculator2/ZteTrackManager;->getInstance()Lcom/android/calculator2/ZteTrackManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/calculator2/ZteTrackManager;->sendEvent(Landroid/os/Bundle;)V

    return-void
.end method

.method public static sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "owner_name"

    const-string v2, "com.android.calculator2"

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "event_name"

    .line 43
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/android/calculator2/ZteTrackManager;->getInstance()Lcom/android/calculator2/ZteTrackManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/calculator2/ZteTrackManager;->sendEvent(Landroid/os/Bundle;)V

    return-void
.end method

.method public static sendEvent(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "owner_name"

    const-string v2, "com.android.calculator2"

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "event_name"

    .line 51
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 53
    invoke-static {}, Lcom/android/calculator2/ZteTrackManager;->getInstance()Lcom/android/calculator2/ZteTrackManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/calculator2/ZteTrackManager;->sendEvent(Landroid/os/Bundle;)V

    return-void
.end method

.class public Lcom/android/captureCamera/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/captureCamera/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/captureCamera/c$a;
    }
.end annotation


# instance fields
.field a:[Lcom/android/captureCamera/c$a;

.field private b:Landroid/content/Context;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/android/captureCamera/c;->c:Z

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/captureCamera/c$a;

    .line 19
    new-instance v2, Lcom/android/captureCamera/c$a;

    const-string v3, "gps"

    invoke-direct {v2, p0, v3}, Lcom/android/captureCamera/c$a;-><init>(Lcom/android/captureCamera/c;Ljava/lang/String;)V

    aput-object v2, v1, v0

    new-instance v0, Lcom/android/captureCamera/c$a;

    const-string v2, "network"

    invoke-direct {v0, p0, v2}, Lcom/android/captureCamera/c$a;-><init>(Lcom/android/captureCamera/c;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/android/captureCamera/c;->a:[Lcom/android/captureCamera/c$a;

    .line 23
    iput-object p1, p0, Lcom/android/captureCamera/c;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/android/captureCamera/c;)Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lcom/android/captureCamera/c;->c:Z

    return p0
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .locals 4

    .line 33
    iget-boolean v0, p0, Lcom/android/captureCamera/c;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 36
    :goto_0
    iget-object v2, p0, Lcom/android/captureCamera/c;->a:[Lcom/android/captureCamera/c$a;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 37
    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/captureCamera/c$a;->a()Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "NubiaLocationManager"

    const-string v2, "No location received yet."

    .line 43
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

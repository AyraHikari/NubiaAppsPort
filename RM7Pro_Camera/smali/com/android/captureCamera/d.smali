.class public final enum Lcom/android/captureCamera/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/captureCamera/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/android/captureCamera/d;

.field public static final enum b:Lcom/android/captureCamera/d;

.field public static final enum c:Lcom/android/captureCamera/d;

.field private static final synthetic d:[Lcom/android/captureCamera/d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 10
    new-instance v0, Lcom/android/captureCamera/d;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/captureCamera/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/captureCamera/d;->a:Lcom/android/captureCamera/d;

    .line 11
    new-instance v1, Lcom/android/captureCamera/d;

    const-string v3, "START_CAMERA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/captureCamera/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/captureCamera/d;->b:Lcom/android/captureCamera/d;

    .line 12
    new-instance v3, Lcom/android/captureCamera/d;

    const-string v5, "CAPTUREING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/captureCamera/d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/captureCamera/d;->c:Lcom/android/captureCamera/d;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/captureCamera/d;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 9
    sput-object v5, Lcom/android/captureCamera/d;->d:[Lcom/android/captureCamera/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/captureCamera/d;
    .locals 1

    .line 9
    const-class v0, Lcom/android/captureCamera/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/captureCamera/d;

    return-object p0
.end method

.method public static values()[Lcom/android/captureCamera/d;
    .locals 1

    .line 9
    sget-object v0, Lcom/android/captureCamera/d;->d:[Lcom/android/captureCamera/d;

    invoke-virtual {v0}, [Lcom/android/captureCamera/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/captureCamera/d;

    return-object v0
.end method

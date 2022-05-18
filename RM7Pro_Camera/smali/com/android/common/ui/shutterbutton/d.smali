.class public final enum Lcom/android/common/ui/shutterbutton/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/common/ui/shutterbutton/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/android/common/ui/shutterbutton/d;

.field public static final enum b:Lcom/android/common/ui/shutterbutton/d;

.field public static final enum c:Lcom/android/common/ui/shutterbutton/d;

.field public static final enum d:Lcom/android/common/ui/shutterbutton/d;

.field public static final enum e:Lcom/android/common/ui/shutterbutton/d;

.field private static final synthetic g:[Lcom/android/common/ui/shutterbutton/d;


# instance fields
.field f:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 13
    new-instance v0, Lcom/android/common/ui/shutterbutton/d;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/common/ui/shutterbutton/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/common/ui/shutterbutton/d;->a:Lcom/android/common/ui/shutterbutton/d;

    .line 17
    new-instance v1, Lcom/android/common/ui/shutterbutton/d;

    const-string v3, "WAIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/android/common/ui/shutterbutton/d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    .line 21
    new-instance v3, Lcom/android/common/ui/shutterbutton/d;

    const-string v5, "COMPASS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/android/common/ui/shutterbutton/d;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/common/ui/shutterbutton/d;->c:Lcom/android/common/ui/shutterbutton/d;

    .line 25
    new-instance v5, Lcom/android/common/ui/shutterbutton/d;

    const-string v7, "GRADIENTER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/android/common/ui/shutterbutton/d;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/common/ui/shutterbutton/d;->d:Lcom/android/common/ui/shutterbutton/d;

    .line 29
    new-instance v7, Lcom/android/common/ui/shutterbutton/d;

    const-string v9, "PROGRESS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/android/common/ui/shutterbutton/d;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/common/ui/shutterbutton/d;->e:Lcom/android/common/ui/shutterbutton/d;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/android/common/ui/shutterbutton/d;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 9
    sput-object v9, Lcom/android/common/ui/shutterbutton/d;->g:[Lcom/android/common/ui/shutterbutton/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lcom/android/common/ui/shutterbutton/d;->f:I

    return-void
.end method

.method static a(I)Lcom/android/common/ui/shutterbutton/d;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 46
    sget-object p0, Lcom/android/common/ui/shutterbutton/d;->a:Lcom/android/common/ui/shutterbutton/d;

    return-object p0

    .line 44
    :cond_0
    sget-object p0, Lcom/android/common/ui/shutterbutton/d;->e:Lcom/android/common/ui/shutterbutton/d;

    return-object p0

    .line 42
    :cond_1
    sget-object p0, Lcom/android/common/ui/shutterbutton/d;->d:Lcom/android/common/ui/shutterbutton/d;

    return-object p0

    .line 40
    :cond_2
    sget-object p0, Lcom/android/common/ui/shutterbutton/d;->c:Lcom/android/common/ui/shutterbutton/d;

    return-object p0

    .line 38
    :cond_3
    sget-object p0, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/common/ui/shutterbutton/d;
    .locals 1

    .line 9
    const-class v0, Lcom/android/common/ui/shutterbutton/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/common/ui/shutterbutton/d;

    return-object p0
.end method

.method public static values()[Lcom/android/common/ui/shutterbutton/d;
    .locals 1

    .line 9
    sget-object v0, Lcom/android/common/ui/shutterbutton/d;->g:[Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0}, [Lcom/android/common/ui/shutterbutton/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/common/ui/shutterbutton/d;

    return-object v0
.end method

.class public final enum Lcom/android/common/ui/shutterbutton/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/common/ui/shutterbutton/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/android/common/ui/shutterbutton/b;

.field public static final enum b:Lcom/android/common/ui/shutterbutton/b;

.field public static final enum c:Lcom/android/common/ui/shutterbutton/b;

.field private static final synthetic e:[Lcom/android/common/ui/shutterbutton/b;


# instance fields
.field d:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 12
    new-instance v0, Lcom/android/common/ui/shutterbutton/b;

    const-string v1, "WHITE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/common/ui/shutterbutton/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/common/ui/shutterbutton/b;->a:Lcom/android/common/ui/shutterbutton/b;

    .line 16
    new-instance v1, Lcom/android/common/ui/shutterbutton/b;

    const-string v3, "RED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/android/common/ui/shutterbutton/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/common/ui/shutterbutton/b;->b:Lcom/android/common/ui/shutterbutton/b;

    .line 17
    new-instance v3, Lcom/android/common/ui/shutterbutton/b;

    const-string v5, "YELLOW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/android/common/ui/shutterbutton/b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/common/ui/shutterbutton/b;->c:Lcom/android/common/ui/shutterbutton/b;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/common/ui/shutterbutton/b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 8
    sput-object v5, Lcom/android/common/ui/shutterbutton/b;->e:[Lcom/android/common/ui/shutterbutton/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/android/common/ui/shutterbutton/b;->d:I

    return-void
.end method

.method static a(I)Lcom/android/common/ui/shutterbutton/b;
    .locals 0

    if-eqz p0, :cond_0

    .line 29
    sget-object p0, Lcom/android/common/ui/shutterbutton/b;->b:Lcom/android/common/ui/shutterbutton/b;

    return-object p0

    .line 27
    :cond_0
    sget-object p0, Lcom/android/common/ui/shutterbutton/b;->a:Lcom/android/common/ui/shutterbutton/b;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/common/ui/shutterbutton/b;
    .locals 1

    .line 8
    const-class v0, Lcom/android/common/ui/shutterbutton/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/common/ui/shutterbutton/b;

    return-object p0
.end method

.method public static values()[Lcom/android/common/ui/shutterbutton/b;
    .locals 1

    .line 8
    sget-object v0, Lcom/android/common/ui/shutterbutton/b;->e:[Lcom/android/common/ui/shutterbutton/b;

    invoke-virtual {v0}, [Lcom/android/common/ui/shutterbutton/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/common/ui/shutterbutton/b;

    return-object v0
.end method

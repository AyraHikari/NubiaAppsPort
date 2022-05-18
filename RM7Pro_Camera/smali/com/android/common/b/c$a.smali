.class public final enum Lcom/android/common/b/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/common/b/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/android/common/b/c$a;

.field public static final enum b:Lcom/android/common/b/c$a;

.field public static final enum c:Lcom/android/common/b/c$a;

.field public static final enum d:Lcom/android/common/b/c$a;

.field public static final enum e:Lcom/android/common/b/c$a;

.field private static final synthetic f:[Lcom/android/common/b/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 29
    new-instance v0, Lcom/android/common/b/c$a;

    const-string v1, "UNINIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/common/b/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/b/c$a;->a:Lcom/android/common/b/c$a;

    .line 30
    new-instance v1, Lcom/android/common/b/c$a;

    const-string v3, "INITED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/common/b/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/common/b/c$a;->b:Lcom/android/common/b/c$a;

    .line 31
    new-instance v3, Lcom/android/common/b/c$a;

    const-string v5, "SURFACED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/common/b/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/common/b/c$a;->c:Lcom/android/common/b/c$a;

    .line 32
    new-instance v5, Lcom/android/common/b/c$a;

    const-string v7, "REGISTERD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/common/b/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/common/b/c$a;->d:Lcom/android/common/b/c$a;

    .line 33
    new-instance v7, Lcom/android/common/b/c$a;

    const-string v9, "UNREGISTERD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/common/b/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/common/b/c$a;->e:Lcom/android/common/b/c$a;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/android/common/b/c$a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 28
    sput-object v9, Lcom/android/common/b/c$a;->f:[Lcom/android/common/b/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/common/b/c$a;
    .locals 1

    .line 28
    const-class v0, Lcom/android/common/b/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/common/b/c$a;

    return-object p0
.end method

.method public static values()[Lcom/android/common/b/c$a;
    .locals 1

    .line 28
    sget-object v0, Lcom/android/common/b/c$a;->f:[Lcom/android/common/b/c$a;

    invoke-virtual {v0}, [Lcom/android/common/b/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/common/b/c$a;

    return-object v0
.end method

.class public final enum Lcom/android/setting/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/setting/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/android/setting/c;

.field public static final enum b:Lcom/android/setting/c;

.field public static final enum c:Lcom/android/setting/c;

.field public static final enum d:Lcom/android/setting/c;

.field public static final enum e:Lcom/android/setting/c;

.field private static final synthetic f:[Lcom/android/setting/c;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 10
    new-instance v0, Lcom/android/setting/c;

    const-string v1, "SWITCHER_HEADER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/setting/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/setting/c;->a:Lcom/android/setting/c;

    .line 11
    new-instance v1, Lcom/android/setting/c;

    const-string v3, "EXPANDER_LIST_HEADER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/android/setting/c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/setting/c;->b:Lcom/android/setting/c;

    .line 12
    new-instance v3, Lcom/android/setting/c;

    const-string v5, "EXPANDER_EDIT_HEADER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/android/setting/c;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/setting/c;->c:Lcom/android/setting/c;

    .line 13
    new-instance v5, Lcom/android/setting/c;

    const-string v7, "SETTING_BASIC_HEADER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/android/setting/c;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/setting/c;->d:Lcom/android/setting/c;

    .line 14
    new-instance v7, Lcom/android/setting/c;

    const-string v9, "SETTING_HIGH_HEADER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/android/setting/c;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/setting/c;->e:Lcom/android/setting/c;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/android/setting/c;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 9
    sput-object v9, Lcom/android/setting/c;->f:[Lcom/android/setting/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/setting/c;
    .locals 1

    .line 9
    const-class v0, Lcom/android/setting/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/setting/c;

    return-object p0
.end method

.method public static values()[Lcom/android/setting/c;
    .locals 1

    .line 9
    sget-object v0, Lcom/android/setting/c;->f:[Lcom/android/setting/c;

    invoke-virtual {v0}, [Lcom/android/setting/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/setting/c;

    return-object v0
.end method

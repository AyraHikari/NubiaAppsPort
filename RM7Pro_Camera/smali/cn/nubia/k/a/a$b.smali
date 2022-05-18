.class public final enum Lcn/nubia/k/a/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/k/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/k/a/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/nubia/k/a/a$b;

.field public static final enum b:Lcn/nubia/k/a/a$b;

.field public static final enum c:Lcn/nubia/k/a/a$b;

.field public static final enum d:Lcn/nubia/k/a/a$b;

.field public static final enum e:Lcn/nubia/k/a/a$b;

.field public static final enum f:Lcn/nubia/k/a/a$b;

.field public static final enum g:Lcn/nubia/k/a/a$b;

.field public static final enum h:Lcn/nubia/k/a/a$b;

.field public static final enum i:Lcn/nubia/k/a/a$b;

.field public static final enum j:Lcn/nubia/k/a/a$b;

.field public static final enum k:Lcn/nubia/k/a/a$b;

.field private static final synthetic l:[Lcn/nubia/k/a/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 99
    new-instance v0, Lcn/nubia/k/a/a$b;

    const-string v1, "ADD_REQUEST_SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/k/a/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/k/a/a$b;->a:Lcn/nubia/k/a/a$b;

    new-instance v1, Lcn/nubia/k/a/a$b;

    const-string v3, "ADD_REQUEST_FAILURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/nubia/k/a/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/nubia/k/a/a$b;->b:Lcn/nubia/k/a/a$b;

    new-instance v3, Lcn/nubia/k/a/a$b;

    const-string v5, "CAN_ADD_REQUEST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/nubia/k/a/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/nubia/k/a/a$b;->c:Lcn/nubia/k/a/a$b;

    .line 100
    new-instance v5, Lcn/nubia/k/a/a$b;

    const-string v7, "OUT_OF_MEMORY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/nubia/k/a/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/nubia/k/a/a$b;->d:Lcn/nubia/k/a/a$b;

    new-instance v7, Lcn/nubia/k/a/a$b;

    const-string v9, "MEMORY_SUFFICIENT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcn/nubia/k/a/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcn/nubia/k/a/a$b;->e:Lcn/nubia/k/a/a$b;

    .line 101
    new-instance v9, Lcn/nubia/k/a/a$b;

    const-string v11, "STORAGE_INSUFFICIENT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcn/nubia/k/a/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcn/nubia/k/a/a$b;->f:Lcn/nubia/k/a/a$b;

    new-instance v11, Lcn/nubia/k/a/a$b;

    const-string v13, "STORAGE_SUFFICIENT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcn/nubia/k/a/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcn/nubia/k/a/a$b;->g:Lcn/nubia/k/a/a$b;

    .line 102
    new-instance v13, Lcn/nubia/k/a/a$b;

    const-string v15, "GET_STORAGE_CAPACITY_FAIL"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcn/nubia/k/a/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcn/nubia/k/a/a$b;->h:Lcn/nubia/k/a/a$b;

    new-instance v15, Lcn/nubia/k/a/a$b;

    const-string v14, "QUEUE_FULL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcn/nubia/k/a/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcn/nubia/k/a/a$b;->i:Lcn/nubia/k/a/a$b;

    .line 103
    new-instance v14, Lcn/nubia/k/a/a$b;

    const-string v12, "QUEUE_NOT_FULL"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcn/nubia/k/a/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcn/nubia/k/a/a$b;->j:Lcn/nubia/k/a/a$b;

    new-instance v12, Lcn/nubia/k/a/a$b;

    const-string v10, "THREAD_POOL_STOPPED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcn/nubia/k/a/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcn/nubia/k/a/a$b;->k:Lcn/nubia/k/a/a$b;

    const/16 v10, 0xb

    new-array v10, v10, [Lcn/nubia/k/a/a$b;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    .line 98
    sput-object v10, Lcn/nubia/k/a/a$b;->l:[Lcn/nubia/k/a/a$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/k/a/a$b;
    .locals 1

    .line 98
    const-class v0, Lcn/nubia/k/a/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/k/a/a$b;

    return-object p0
.end method

.method public static values()[Lcn/nubia/k/a/a$b;
    .locals 1

    .line 98
    sget-object v0, Lcn/nubia/k/a/a$b;->l:[Lcn/nubia/k/a/a$b;

    invoke-virtual {v0}, [Lcn/nubia/k/a/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/k/a/a$b;

    return-object v0
.end method

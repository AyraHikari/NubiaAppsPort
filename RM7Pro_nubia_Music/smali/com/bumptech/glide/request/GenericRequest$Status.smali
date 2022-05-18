.class final enum Lcom/bumptech/glide/request/GenericRequest$Status;
.super Ljava/lang/Enum;
.source "GenericRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/GenericRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bumptech/glide/request/GenericRequest$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bumptech/glide/request/GenericRequest$Status;

.field public static final enum b:Lcom/bumptech/glide/request/GenericRequest$Status;

.field public static final enum c:Lcom/bumptech/glide/request/GenericRequest$Status;

.field public static final enum d:Lcom/bumptech/glide/request/GenericRequest$Status;

.field public static final enum e:Lcom/bumptech/glide/request/GenericRequest$Status;

.field public static final enum f:Lcom/bumptech/glide/request/GenericRequest$Status;

.field public static final enum g:Lcom/bumptech/glide/request/GenericRequest$Status;

.field public static final enum h:Lcom/bumptech/glide/request/GenericRequest$Status;

.field private static final synthetic i:[Lcom/bumptech/glide/request/GenericRequest$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/bumptech/glide/request/GenericRequest$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v3}, Lcom/bumptech/glide/request/GenericRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->a:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 44
    new-instance v0, Lcom/bumptech/glide/request/GenericRequest$Status;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v4}, Lcom/bumptech/glide/request/GenericRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->b:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 46
    new-instance v0, Lcom/bumptech/glide/request/GenericRequest$Status;

    const-string v1, "WAITING_FOR_SIZE"

    invoke-direct {v0, v1, v5}, Lcom/bumptech/glide/request/GenericRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->c:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 48
    new-instance v0, Lcom/bumptech/glide/request/GenericRequest$Status;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v6}, Lcom/bumptech/glide/request/GenericRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->d:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 50
    new-instance v0, Lcom/bumptech/glide/request/GenericRequest$Status;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v7}, Lcom/bumptech/glide/request/GenericRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->e:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 52
    new-instance v0, Lcom/bumptech/glide/request/GenericRequest$Status;

    const-string v1, "CANCELLED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/request/GenericRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->f:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 54
    new-instance v0, Lcom/bumptech/glide/request/GenericRequest$Status;

    const-string v1, "CLEARED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/request/GenericRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->g:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 56
    new-instance v0, Lcom/bumptech/glide/request/GenericRequest$Status;

    const-string v1, "PAUSED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/request/GenericRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->h:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 40
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->a:Lcom/bumptech/glide/request/GenericRequest$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->b:Lcom/bumptech/glide/request/GenericRequest$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->c:Lcom/bumptech/glide/request/GenericRequest$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->d:Lcom/bumptech/glide/request/GenericRequest$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->e:Lcom/bumptech/glide/request/GenericRequest$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/bumptech/glide/request/GenericRequest$Status;->f:Lcom/bumptech/glide/request/GenericRequest$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/bumptech/glide/request/GenericRequest$Status;->g:Lcom/bumptech/glide/request/GenericRequest$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/bumptech/glide/request/GenericRequest$Status;->h:Lcom/bumptech/glide/request/GenericRequest$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->i:[Lcom/bumptech/glide/request/GenericRequest$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/request/GenericRequest$Status;
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/bumptech/glide/request/GenericRequest$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/GenericRequest$Status;

    return-object v0
.end method

.method public static values()[Lcom/bumptech/glide/request/GenericRequest$Status;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->i:[Lcom/bumptech/glide/request/GenericRequest$Status;

    invoke-virtual {v0}, [Lcom/bumptech/glide/request/GenericRequest$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/request/GenericRequest$Status;

    return-object v0
.end method

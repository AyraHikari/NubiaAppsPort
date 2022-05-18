.class public final enum Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;
.super Ljava/lang/Enum;
.source "InfoRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/statistics/sdk/offline/InfoRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;

.field public static final enum OK:Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;

.field public static final enum READY:Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 18
    new-instance v0, Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;->READY:Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;

    new-instance v0, Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;

    const-string v1, "OK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;->OK:Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;

    const/4 v0, 0x2

    .line 17
    new-array v0, v0, [Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;

    sget-object v1, Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;->READY:Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;->OK:Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;

    aput-object v1, v0, v3

    sput-object v0, Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;->$VALUES:[Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;
    .locals 1

    .line 17
    const-class v0, Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;

    return-object p0
.end method

.method public static values()[Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;
    .locals 1

    .line 17
    sget-object v0, Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;->$VALUES:[Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;

    invoke-virtual {v0}, [Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;

    return-object v0
.end method

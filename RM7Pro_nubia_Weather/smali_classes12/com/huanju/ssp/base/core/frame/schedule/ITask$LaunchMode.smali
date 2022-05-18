.class public final enum Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;
.super Ljava/lang/Enum;
.source "ITask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/core/frame/schedule/ITask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LaunchMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;

.field public static final enum ADD_NEW:Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;

.field public static final enum REPLACE_OLD:Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;

    const-string v1, "REPLACE_OLD"

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;->REPLACE_OLD:Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;

    .line 20
    new-instance v0, Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;

    const-string v1, "ADD_NEW"

    invoke-direct {v0, v1, v3}, Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;->ADD_NEW:Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;

    sget-object v1, Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;->REPLACE_OLD:Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;->ADD_NEW:Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;->$VALUES:[Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;

    return-object v0
.end method

.method public static values()[Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;->$VALUES:[Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;

    invoke-virtual {v0}, [Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;

    return-object v0
.end method

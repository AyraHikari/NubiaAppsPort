.class public Lcom/zte/statistics/sdk/obj/ResponseObj;
.super Ljava/lang/Object;
.source "ResponseObj.java"


# instance fields
.field private body:Ljava/lang/String;

.field private code:I

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/zte/statistics/sdk/obj/ResponseObj;->body:Ljava/lang/String;

    return-object p0
.end method

.method public getCode()I
    .locals 0

    .line 8
    iget p0, p0, Lcom/zte/statistics/sdk/obj/ResponseObj;->code:I

    return p0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/zte/statistics/sdk/obj/ResponseObj;->msg:Ljava/lang/String;

    return-object p0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/zte/statistics/sdk/obj/ResponseObj;->body:Ljava/lang/String;

    return-void
.end method

.method public setCode(I)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/zte/statistics/sdk/obj/ResponseObj;->code:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/zte/statistics/sdk/obj/ResponseObj;->msg:Ljava/lang/String;

    return-void
.end method

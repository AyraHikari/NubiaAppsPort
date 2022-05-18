.class public Lcom/zte/statistics/sdk/obj/ExceptionObj;
.super Lcom/zte/statistics/sdk/obj/StatisObj;
.source "ExceptionObj.java"


# instance fields
.field private content:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/zte/statistics/sdk/obj/StatisObj;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/zte/statistics/sdk/obj/ExceptionObj;->content:Ljava/lang/String;

    return-object p0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/zte/statistics/sdk/obj/ExceptionObj;->content:Ljava/lang/String;

    return-void
.end method

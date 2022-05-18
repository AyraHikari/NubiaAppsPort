.class public Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "In"
.end annotation


# instance fields
.field public connectTimeout:I

.field public id:Ljava/lang/String;

.field public params:Ljava/lang/String;

.field public readTimeout:I

.field public requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public requestMethod:I

.field public requestUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

.field public tryCount:I

.field public trySpace:I


# direct methods
.method public constructor <init>(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;)V
    .locals 3

    .prologue
    const/16 v2, 0x3a98

    const/4 v1, 0x0

    .line 54
    iput-object p1, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->this$0:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->params:Ljava/lang/String;

    .line 62
    iput v1, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->requestMethod:I

    .line 64
    iput v2, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->connectTimeout:I

    .line 66
    iput v2, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->readTimeout:I

    .line 68
    const/4 v0, 0x3

    iput v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->tryCount:I

    .line 70
    iput v1, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->trySpace:I

    return-void
.end method

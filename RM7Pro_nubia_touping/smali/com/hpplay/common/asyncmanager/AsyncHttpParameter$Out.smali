.class public Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Out"
.end annotation


# instance fields
.field public responseCode:I

.field public result:Ljava/lang/String;

.field public resultType:I

.field final synthetic this$0:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;


# direct methods
.method public constructor <init>(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;)V
    .locals 1

    .prologue
    .line 75
    iput-object p1, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->this$0:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->responseCode:I

    return-void
.end method

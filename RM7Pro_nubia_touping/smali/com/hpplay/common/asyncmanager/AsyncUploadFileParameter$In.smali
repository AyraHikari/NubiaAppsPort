.class public Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$In;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "In"
.end annotation


# instance fields
.field public headParameter:Ljava/util/Map;
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

.field public httpMethod:Lcom/hpplay/common/asyncmanager/HttpMethod;

.field public id:Ljava/lang/String;

.field public localPath:[Ljava/lang/String;

.field public resultClass:Ljava/lang/Class;

.field final synthetic this$0:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;)V
    .locals 1

    .prologue
    .line 34
    iput-object p1, p0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$In;->this$0:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-class v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$In;->resultClass:Ljava/lang/Class;

    return-void
.end method

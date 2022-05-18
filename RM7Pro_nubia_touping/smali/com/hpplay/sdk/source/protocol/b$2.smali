.class Lcom/hpplay/sdk/source/protocol/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/protocol/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/protocol/b;->a(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/hpplay/sdk/source/protocol/b;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/protocol/b;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/b$2;->d:Lcom/hpplay/sdk/source/protocol/b;

    iput-object p2, p0, Lcom/hpplay/sdk/source/protocol/b$2;->a:Ljava/lang/String;

    iput p3, p0, Lcom/hpplay/sdk/source/protocol/b$2;->b:I

    iput-object p4, p0, Lcom/hpplay/sdk/source/protocol/b$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 116
    invoke-static {}, Lcom/hpplay/sdk/source/protocol/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v0, "success"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b$2;->d:Lcom/hpplay/sdk/source/protocol/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/protocol/b;->a(Lcom/hpplay/sdk/source/protocol/b;Z)Z

    .line 119
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b$2;->d:Lcom/hpplay/sdk/source/protocol/b;

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/b$2;->a:Ljava/lang/String;

    iget v2, p0, Lcom/hpplay/sdk/source/protocol/b$2;->b:I

    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/b$2;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/protocol/b;->a(Lcom/hpplay/sdk/source/protocol/b;Ljava/lang/String;ILjava/lang/String;)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b$2;->d:Lcom/hpplay/sdk/source/protocol/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/protocol/b;->a(Lcom/hpplay/sdk/source/protocol/b;Z)Z

    goto :goto_0
.end method

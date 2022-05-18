.class Lcn/nubia/b/a/c$a;
.super Lcn/nubia/b/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/b/a/c;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcn/nubia/b/a/c;Lcn/nubia/b/a/f;)V
    .locals 1

    .line 43
    iput-object p1, p0, Lcn/nubia/b/a/c$a;->a:Lcn/nubia/b/a/c;

    .line 44
    invoke-direct {p0, p2}, Lcn/nubia/b/a/d;-><init>(Lcn/nubia/b/a/f;)V

    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create closeImageProxy: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcn/nubia/b/a/c$a;->hashCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/b/a/c;->a(Lcn/nubia/b/a/c;Ljava/lang/String;)V

    .line 46
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcn/nubia/b/a/c$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 51
    iget-object v0, p0, Lcn/nubia/b/a/c$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcn/nubia/b/a/c$a;->a:Lcn/nubia/b/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close closeImageProxy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/b/a/c$a;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/b/a/c;->a(Lcn/nubia/b/a/c;Ljava/lang/String;)V

    .line 53
    invoke-super {p0}, Lcn/nubia/b/a/d;->close()V

    .line 54
    iget-object v0, p0, Lcn/nubia/b/a/c$a;->a:Lcn/nubia/b/a/c;

    invoke-static {v0}, Lcn/nubia/b/a/c;->a(Lcn/nubia/b/a/c;)V

    :cond_0
    return-void
.end method

.class public Lcom/zte/camera/ui/b/c/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/camera/ui/b/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/zte/camera/ui/b/c/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lcom/zte/camera/ui/b/c/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zte/camera/ui/b/c/c;-><init>(Lcom/zte/camera/ui/b/c/c$1;)V

    iput-object v0, p0, Lcom/zte/camera/ui/b/c/c$a;->a:Lcom/zte/camera/ui/b/c/c;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/zte/camera/ui/b/c/c$a;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/zte/camera/ui/b/c/c$a;->a:Lcom/zte/camera/ui/b/c/c;

    if-eqz v0, :cond_0

    .line 106
    invoke-static {v0, p1}, Lcom/zte/camera/ui/b/c/c;->a(Lcom/zte/camera/ui/b/c/c;I)I

    :cond_0
    return-object p0
.end method

.method public a(Landroid/util/SparseArray;)Lcom/zte/camera/ui/b/c/c$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/zte/camera/ui/b/c/a/b;",
            ">;)",
            "Lcom/zte/camera/ui/b/c/c$a;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/zte/camera/ui/b/c/c$a;->a:Lcom/zte/camera/ui/b/c/c;

    if-eqz v0, :cond_0

    .line 149
    invoke-static {v0, p1}, Lcom/zte/camera/ui/b/c/c;->a(Lcom/zte/camera/ui/b/c/c;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/zte/camera/ui/b/c/c$a;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/zte/camera/ui/b/c/c$a;->a:Lcom/zte/camera/ui/b/c/c;

    if-eqz v0, :cond_0

    .line 99
    invoke-static {v0, p1}, Lcom/zte/camera/ui/b/c/c;->a(Lcom/zte/camera/ui/b/c/c;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public a()Lcom/zte/camera/ui/b/c/c;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/zte/camera/ui/b/c/c$a;->a:Lcom/zte/camera/ui/b/c/c;

    return-object v0
.end method

.method public b(I)Lcom/zte/camera/ui/b/c/c$a;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/zte/camera/ui/b/c/c$a;->a:Lcom/zte/camera/ui/b/c/c;

    if-eqz v0, :cond_0

    .line 113
    invoke-static {v0, p1}, Lcom/zte/camera/ui/b/c/c;->b(Lcom/zte/camera/ui/b/c/c;I)I

    :cond_0
    return-object p0
.end method

.method public c(I)Lcom/zte/camera/ui/b/c/c$a;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/zte/camera/ui/b/c/c$a;->a:Lcom/zte/camera/ui/b/c/c;

    if-eqz v0, :cond_0

    .line 135
    invoke-static {v0, p1}, Lcom/zte/camera/ui/b/c/c;->c(Lcom/zte/camera/ui/b/c/c;I)I

    :cond_0
    return-object p0
.end method

.method public d(I)Lcom/zte/camera/ui/b/c/c$a;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/zte/camera/ui/b/c/c$a;->a:Lcom/zte/camera/ui/b/c/c;

    if-eqz v0, :cond_0

    .line 142
    invoke-static {v0, p1}, Lcom/zte/camera/ui/b/c/c;->d(Lcom/zte/camera/ui/b/c/c;I)I

    :cond_0
    return-object p0
.end method

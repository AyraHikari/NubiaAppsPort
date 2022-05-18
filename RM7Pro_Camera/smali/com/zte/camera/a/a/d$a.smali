.class public Lcom/zte/camera/a/a/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/camera/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:J

.field d:Ljava/lang/String;

.field e:I

.field f:I

.field g:I

.field final synthetic h:Lcom/zte/camera/a/a/d;


# direct methods
.method public constructor <init>(Lcom/zte/camera/a/a/d;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;III)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/zte/camera/a/a/d$a;->h:Lcom/zte/camera/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p2, p0, Lcom/zte/camera/a/a/d$a;->a:Ljava/lang/String;

    .line 195
    iput-object p3, p0, Lcom/zte/camera/a/a/d$a;->b:Ljava/lang/String;

    .line 196
    iput-wide p4, p0, Lcom/zte/camera/a/a/d$a;->c:J

    .line 197
    iput-object p6, p0, Lcom/zte/camera/a/a/d$a;->d:Ljava/lang/String;

    .line 198
    iput p7, p0, Lcom/zte/camera/a/a/d$a;->e:I

    .line 199
    iput p8, p0, Lcom/zte/camera/a/a/d$a;->f:I

    .line 200
    iput p9, p0, Lcom/zte/camera/a/a/d$a;->g:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/zte/camera/a/a/d$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/zte/camera/a/a/d$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 212
    iget-wide v0, p0, Lcom/zte/camera/a/a/d$a;->c:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/zte/camera/a/a/d$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 220
    iget v0, p0, Lcom/zte/camera/a/a/d$a;->e:I

    return v0
.end method

.method public f()I
    .locals 1

    .line 224
    iget v0, p0, Lcom/zte/camera/a/a/d$a;->f:I

    return v0
.end method

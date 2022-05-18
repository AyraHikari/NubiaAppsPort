.class Lcom/android/setting/e$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/setting/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/setting/e;->e(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/android/setting/e;


# direct methods
.method constructor <init>(Lcom/android/setting/e;Ljava/lang/String;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/android/setting/e$11;->b:Lcom/android/setting/e;

    iput-object p2, p0, Lcom/android/setting/e$11;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/android/setting/e$11;->b:Lcom/android/setting/e;

    invoke-static {v0}, Lcom/android/setting/e;->g(Lcom/android/setting/e;)Lcom/android/setting/e$b;

    move-result-object v0

    iget-object v1, p0, Lcom/android/setting/e$11;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/setting/e$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

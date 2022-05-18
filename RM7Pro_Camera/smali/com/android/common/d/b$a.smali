.class Lcom/android/common/d/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Lcom/android/common/b/l;

.field b:I

.field c:I

.field final synthetic d:Lcom/android/common/d/b;


# direct methods
.method constructor <init>(Lcom/android/common/d/b;Lcom/android/common/b/l;II)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/android/common/d/b$a;->d:Lcom/android/common/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p2, p0, Lcom/android/common/d/b$a;->a:Lcom/android/common/b/l;

    .line 167
    iput p3, p0, Lcom/android/common/d/b$a;->b:I

    .line 168
    iput p4, p0, Lcom/android/common/d/b$a;->c:I

    return-void
.end method


# virtual methods
.method a(Lcom/android/common/b/l;I)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/android/common/d/b$a;->a:Lcom/android/common/b/l;

    .line 173
    iput p2, p0, Lcom/android/common/d/b$a;->b:I

    return-void
.end method

.class Lcom/zte/mifavor/widget/ListView$1$ItemRecod;
.super Ljava/lang/Object;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/ListView$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemRecod"
.end annotation


# instance fields
.field height:I

.field final synthetic this$1:Lcom/zte/mifavor/widget/ListView$1;

.field top:I


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/ListView$1;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/zte/mifavor/widget/ListView$1$ItemRecod;->this$1:Lcom/zte/mifavor/widget/ListView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 186
    iput p1, p0, Lcom/zte/mifavor/widget/ListView$1$ItemRecod;->height:I

    .line 187
    iput p1, p0, Lcom/zte/mifavor/widget/ListView$1$ItemRecod;->top:I

    return-void
.end method

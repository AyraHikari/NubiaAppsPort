.class Lcom/zte/mifavor/widget/ZTEDaysOfWeek$5;
.super Ljava/lang/Object;
.source "ZTEDaysOfWeek.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->InitToggleButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/ZTEDaysOfWeek;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/ZTEDaysOfWeek;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek$5;->this$0:Lcom/zte/mifavor/widget/ZTEDaysOfWeek;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek$5;->this$0:Lcom/zte/mifavor/widget/ZTEDaysOfWeek;

    const/4 p1, 0x4

    invoke-static {p0, p1, p2}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->access$000(Lcom/zte/mifavor/widget/ZTEDaysOfWeek;IZ)V

    return-void
.end method

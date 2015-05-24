.class abstract Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;
.super Ljava/lang/Object;
.source "ScreenElementRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ScreenElementRoot$ExtraResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "Metrics"
.end annotation


# instance fields
.field mDensity:I

.field mScreenWidth:I

.field mSizeType:I

.field final synthetic this$0:Lmiui/maml/ScreenElementRoot$ExtraResource;


# direct methods
.method constructor <init>(Lmiui/maml/ScreenElementRoot$ExtraResource;)V
    .locals 0

    .prologue
    .line 668
    iput-object p1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;->this$0:Lmiui/maml/ScreenElementRoot$ExtraResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
